; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_readU32FromChar.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_readU32FromChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.readU32FromChar.errorMsg = private unnamed_addr constant [31 x i8] c"error: numeric value too large\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @readU32FromChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readU32FromChar(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca [31 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %8 = bitcast [31 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* @__const.readU32FromChar.errorMsg, i32 0, i32 0), i64 31, i1 false)
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i8**, i8*** %2, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 45
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  %15 = load i8**, i8*** %2, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %15, align 8
  br label %18

18:                                               ; preds = %14, %1
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i8**, i8*** %2, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sge i32 %23, 48
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8**, i8*** %2, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 57
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i1 [ false, %19 ], [ %30, %25 ]
  br i1 %32, label %33, label %59

33:                                               ; preds = %31
  store i32 429496728, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ugt i32 %34, 429496728
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0
  %38 = call i32 @errorOut(i8* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 %40, 10
  store i32 %41, i32* %5, align 4
  %42 = load i8**, i8*** %2, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sge i32 %45, 48
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i8**, i8*** %2, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = sub nsw i32 %52, 48
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i8**, i8*** %2, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  br label %19

59:                                               ; preds = %31
  %60 = load i8**, i8*** %2, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 75
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i8**, i8*** %2, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 77
  br i1 %70, label %71, label %118

71:                                               ; preds = %65, %59
  store i32 4194303, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ugt i32 %72, 4194303
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0
  %76 = call i32 @errorOut(i8* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %5, align 4
  %79 = shl i32 %78, 10
  store i32 %79, i32* %5, align 4
  %80 = load i8**, i8*** %2, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 77
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = icmp ugt i32 %86, 4194303
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0
  %90 = call i32 @errorOut(i8* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %5, align 4
  %93 = shl i32 %92, 10
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %77
  %95 = load i8**, i8*** %2, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %95, align 8
  %98 = load i8**, i8*** %2, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 105
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i8**, i8*** %2, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %104, align 8
  br label %107

107:                                              ; preds = %103, %94
  %108 = load i8**, i8*** %2, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 66
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i8**, i8*** %2, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %114, align 8
  br label %117

117:                                              ; preds = %113, %107
  br label %118

118:                                              ; preds = %117, %65
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = mul i32 %119, %120
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @errorOut(i8*) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
