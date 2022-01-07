; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_table_modify.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_table_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"insertRow failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"disp == NULL\0A\00", align 1
@IID_IHTMLTableRow = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"QueryInterface failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"row == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"get_rowIndex failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"index = %d, expected 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"deleteRow failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_table_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_table_modify(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @test_table_length(i32* %7, i32 2)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @IHTMLTable_insertRow(i32* %9, i32 0, i32** %3)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @S_OK, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @test_table_length(i32* %21, i32 3)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32*, i32** %3, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %1
  br label %71

30:                                               ; preds = %26
  %31 = load i32*, i32** %3, align 8
  %32 = bitcast i32** %4 to i8**
  %33 = call i32 @IDispatch_QueryInterface(i32* %31, i32* @IID_IHTMLTableRow, i8** %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @IDispatch_Release(i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @S_OK, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 -559038737, i32* %6, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @IHTMLTableRow_get_rowIndex(i32* %46, i32* %6)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @IHTMLTableRow_Release(i32* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @IHTMLTable_deleteRow(i32* %61, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @S_OK, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @test_table_length(i32* %69, i32 2)
  br label %71

71:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @test_table_length(i32*, i32) #1

declare dso_local i32 @IHTMLTable_insertRow(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @IHTMLTableRow_get_rowIndex(i32*, i32*) #1

declare dso_local i32 @IHTMLTableRow_Release(i32*) #1

declare dso_local i32 @IHTMLTable_deleteRow(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
