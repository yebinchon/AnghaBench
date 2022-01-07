; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzip2.c_mySIGSEGVorSIGBUScatcher.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzip2.c_mySIGSEGVorSIGBUScatcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opMode = common dso_local global i64 0, align 8
@OM_Z = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [873 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to: bzip2-devel@sourceware.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@progName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1000 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to: bzip2-devel@sourceware.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mySIGSEGVorSIGBUScatcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @opMode, align 8
  %4 = load i64, i64* @OM_Z, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = load i8*, i8** @progName, align 8
  %9 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([873 x i8], [873 x i8]* @.str, i64 0, i64 0), i8* %8)
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** @progName, align 8
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %10, %6
  %15 = call i32 (...) @showFileNames()
  %16 = load i64, i64* @opMode, align 8
  %17 = load i64, i64* @OM_Z, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @cleanUpAndFail(i32 3)
  br label %24

21:                                               ; preds = %14
  %22 = call i32 (...) @cadvise()
  %23 = call i32 @cleanUpAndFail(i32 2)
  br label %24

24:                                               ; preds = %21, %19
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @showFileNames(...) #1

declare dso_local i32 @cleanUpAndFail(i32) #1

declare dso_local i32 @cadvise(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
