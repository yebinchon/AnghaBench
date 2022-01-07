; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cproxy.c_fill_stubless_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cproxy.c_fill_stubless_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunk = type { i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@MAX_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%u methods not supported\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@method_blocks = common dso_local global %struct.thunk** null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_stubless_table(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thunk*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = bitcast i32* %11 to i8**
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
  br label %87

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %82, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 3
  %28 = load i32, i32* @BLOCK_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @BLOCK_SIZE, align 4
  %32 = sdiv i32 %30, %31
  %33 = icmp slt i32 %25, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %24
  %35 = load %struct.thunk**, %struct.thunk*** @method_blocks, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.thunk*, %struct.thunk** %35, i64 %37
  %39 = load %struct.thunk*, %struct.thunk** %38, align 8
  store %struct.thunk* %39, %struct.thunk** %9, align 8
  %40 = load %struct.thunk*, %struct.thunk** %9, align 8
  %41 = icmp ne %struct.thunk* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.thunk* @allocate_block(i32 %43)
  store %struct.thunk* %44, %struct.thunk** %9, align 8
  %45 = icmp ne %struct.thunk* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %87

48:                                               ; preds = %42, %34
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %76, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BLOCK_SIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, 3
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @BLOCK_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sub nsw i32 %56, %59
  %61 = icmp slt i32 %54, %60
  br label %62

62:                                               ; preds = %53, %49
  %63 = phi i1 [ false, %49 ], [ %61, %53 ]
  br i1 %63, label %64, label %81

64:                                               ; preds = %62
  %65 = load i8**, i8*** %6, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = icmp eq i8* %66, inttoptr (i64 -1 to i8*)
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.thunk*, %struct.thunk** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.thunk, %struct.thunk* %69, i64 %71
  %73 = bitcast %struct.thunk* %72 to i8*
  %74 = load i8**, i8*** %6, align 8
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %6, align 8
  br label %49

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %24

85:                                               ; preds = %24
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %46, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local %struct.thunk* @allocate_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
