; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test5.c_Sqlitetest5_Init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test5.c_Sqlitetest5_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32* }

@Sqlitetest5_Init.aCmd = internal global [4 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32* inttoptr (i64 131 to i32*) }, %struct.anon { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32* inttoptr (i64 128 to i32*) }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32* inttoptr (i64 130 to i32*) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32* inttoptr (i64 129 to i32*) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"binarize\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"test_value_overhead\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"test_translate\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"translate_selftest\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sqlitetest5_Init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 4
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @Sqlitetest5_Init.aCmd, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 16
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @Sqlitetest5_Init.aCmd, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @Tcl_CreateObjCommand(i32* %9, i8* %14, i32* %19, i32 0, i32 0)
  br label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  %25 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %25
}

declare dso_local i32 @Tcl_CreateObjCommand(i32*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
