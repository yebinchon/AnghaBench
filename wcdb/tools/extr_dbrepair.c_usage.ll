; ModuleID = '/home/carl/AnghaBench/wcdb/tools/extr_dbrepair.c_usage.c'
source_filename = "/home/carl/AnghaBench/wcdb/tools/extr_dbrepair.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [113 x i8] c"USAGE:\0A  %1$s --output=<output_path> [OPTIONS] <db_path>\0A  %1$s --save-master=<master_path> [OPTIONS] <db_path>\0A\00", align 1
@.str.1 = private unnamed_addr constant [915 x i8] c"\0AOUTPUT OPTIONS:\0A  -o, --output=<path>        Output recovered data to new SQLite database.\0A  -m, --load-master=<path>   Load previously saved master info from <path>.\0A  -M, --save-master=<path>   Save master info and do no recover.\0A                             <db_path> should be database that's not corrupted.\0A  -f, --filter=<table>       Add <table> to the filter. If one or more table is in the\0A                             filter, only filtered tables is read and recovered.\0A\0ACIPHER OPTIONS:\0A  -k, --in-key=<key>         Specify the input key used to read database in <db_path>.\0A  -K, --out-key=<key>        Specify the output key used to write '--output' database.\0A      --page-size=<size>     Specify page size of the encrypted input database.\0A      --version=<1|2|3>      Use SQLCipher format version 1.x, 2.x or 3.x.\0A\0AMISCELLANEOUS OPTIONS:\0A  -h, --help                 Show this help message and exit.\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 @puts(i8* getelementptr inbounds ([915 x i8], [915 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
