; ModuleID = '/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/randomDictBuilder/extr_io.c_readU32FromChar.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/randomDictBuilder/extr_io.c_readU32FromChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.readU32FromChar.errorMsg = private unnamed_addr constant [31 x i8] c"error: numeric value too large\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readU32FromChar(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca [31 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %7 = bitcast [31 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* @__const.readU32FromChar.errorMsg, i32 0, i32 0), i64 31, i1 false)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i8**, i8*** %2, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sge i32 %12, 48
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i8**, i8*** %2, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 %18, 57
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i1 [ false, %8 ], [ %19, %14 ]
  br i1 %21, label %22, label %40

22:                                               ; preds = %20
  store i32 429496728, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ugt i32 %23, 429496728
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = mul i32 %28, 10
  store i32 %29, i32* %4, align 4
  %30 = load i8**, i8*** %2, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %33, 48
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i8**, i8*** %2, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  br label %8

40:                                               ; preds = %20
  %41 = load i8**, i8*** %2, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 75
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8**, i8*** %2, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 77
  br i1 %51, label %52, label %97

52:                                               ; preds = %46, %40
  store i32 4194303, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ugt i32 %53, 4194303
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = shl i32 %58, 10
  store i32 %59, i32* %4, align 4
  %60 = load i8**, i8*** %2, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 77
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load i32, i32* %4, align 4
  %67 = icmp ugt i32 %66, 4194303
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @exit(i32 1) #3
  unreachable

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = shl i32 %71, 10
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %57
  %74 = load i8**, i8*** %2, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %74, align 8
  %77 = load i8**, i8*** %2, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 105
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i8**, i8*** %2, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %83, align 8
  br label %86

86:                                               ; preds = %82, %73
  %87 = load i8**, i8*** %2, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 66
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i8**, i8*** %2, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %93, align 8
  br label %96

96:                                               ; preds = %92, %86
  br label %97

97:                                               ; preds = %96, %46
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
