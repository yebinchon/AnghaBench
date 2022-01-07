; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cstub.c_fill_delegated_stub_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cstub.c_fill_delegated_stub_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@MAX_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%u methods not supported\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@delegating_QueryInterface = common dso_local global i32 0, align 4
@delegating_AddRef = common dso_local global i32 0, align 4
@delegating_Release = common dso_local global i32 0, align 4
@method_blocks = common dso_local global i32** null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @fill_delegated_stub_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_delegated_stub_table(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 1
  %12 = bitcast %struct.TYPE_3__* %11 to i8**
  store i8** %12, i8*** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 3
  %15 = load i32, i32* @BLOCK_SIZE, align 4
  %16 = load i32, i32* @MAX_BLOCKS, align 4
  %17 = mul nsw i32 %15, %16
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load i32, i32* @delegating_QueryInterface, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @delegating_AddRef, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @delegating_Release, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %85, %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 3
  %37 = load i32, i32* @BLOCK_SIZE, align 4
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @BLOCK_SIZE, align 4
  %41 = sdiv i32 %39, %40
  %42 = icmp slt i32 %34, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %33
  %44 = load i32**, i32*** @method_blocks, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = call i32* @allocate_block(i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %90

57:                                               ; preds = %51, %43
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %81, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @BLOCK_SIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 3
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @BLOCK_SIZE, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sub nsw i32 %65, %68
  %70 = icmp slt i32 %63, %69
  br label %71

71:                                               ; preds = %62, %58
  %72 = phi i1 [ false, %58 ], [ %70, %62 ]
  br i1 %72, label %73, label %84

73:                                               ; preds = %71
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = bitcast i32* %77 to i8*
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %6, align 8
  store i8* %78, i8** %79, align 8
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %58

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %33

88:                                               ; preds = %33
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %55, %19
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32* @allocate_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
