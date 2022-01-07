; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_SpoolCheck.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_SpoolCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [142 x i8] c"Sorry, spooling isn't allowed because this user requires that the NCFTPDIR\0Aenvironment variable be set to a directory to write datafiles to.\0A\00", align 1
@.str.1 = private unnamed_addr constant [131 x i8] c"Sorry, the \22ncftpbatch\22 program could not be found.\0AThis program must be installed and in your PATH in order to use this feature.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @SpoolCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SpoolCheck() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @CanSpool()
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @printf(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %13

6:                                                ; preds = %0
  %7 = call i64 (...) @HaveSpool()
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @printf(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %13

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %9, %4
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i64 @CanSpool(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @HaveSpool(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
