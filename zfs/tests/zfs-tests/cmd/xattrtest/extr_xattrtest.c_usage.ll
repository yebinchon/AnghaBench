; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_usage.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"usage: %s [-hvycdrRk] [-n <nth>] [-f <files>] [-x <xattrs>]\0A       [-s <bytes>] [-p <path>] [-t <script> ] [-o <phase>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [917 x i8] c"  --help        -h           This help\0A  --verbose     -v           Increase verbosity\0A  --verify      -y           Verify xattr contents\0A  --nth         -n <nth>     Print every nth file\0A  --files       -f <files>   Set xattrs on N files\0A  --xattrs      -x <xattrs>  Set N xattrs on each file\0A  --size        -s <bytes>   Set N bytes per xattr\0A  --path        -p <path>    Path to files\0A  --synccaches  -c           Sync caches between phases\0A  --dropcaches  -d           Drop caches between phases\0A  --script      -t <script>  Exec script between phases\0A  --seed        -e <seed>    Random seed value\0A  --random      -r           Randomly sized xattrs [16-size]\0A  --randomvalue -R           Random xattr values\0A  --keep        -k           Don't unlink files\0A  --only        -o <num>     Only run phase N\0A                             0=all, 1=create, 2=setxattr,\0A                             3=getxattr, 4=unlink\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([917 x i8], [917 x i8]* @.str.1, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
