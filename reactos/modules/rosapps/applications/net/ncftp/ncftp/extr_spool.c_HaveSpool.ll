; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_HaveSpool.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_HaveSpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gHaveSpool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"/usr/bin/ncftpbatch\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ncftpbatch -X\00", align 1
@BINDIR = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@gOurInstallationPath = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HaveSpool() #0 {
  %1 = load i32, i32* @gHaveSpool, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %18

3:                                                ; preds = %0
  %4 = call i64 (...) @geteuid()
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i32, i32* @X_OK, align 4
  %8 = call i64 @access(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 0
  store i32 %11, i32* @gHaveSpool, align 4
  br label %17

12:                                               ; preds = %3
  %13 = call i64 @system(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* @gHaveSpool, align 4
  br label %17

17:                                               ; preds = %12, %6
  br label %18

18:                                               ; preds = %17, %0
  %19 = load i32, i32* @gHaveSpool, align 4
  ret i32 %19
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @system(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
