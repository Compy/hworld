open (A, "./cmds.db");
@A = <A>;
close(A);

foreach $i (@A) {
        $i =~ s/\n//;
        $i =~ s/\r//;
        if ($i ne "") {
                @TMP = split(/\s* /, $i);
                $F = uc($TMP[0]);
                open(B, ">./$F");
                close(B);
        }
}
