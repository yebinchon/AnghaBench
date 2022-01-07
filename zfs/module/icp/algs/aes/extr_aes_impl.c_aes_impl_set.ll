; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl.c_aes_impl_set.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl.c_aes_impl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AES_IMPL_NAME_MAX = common dso_local global i32 0, align 4
@user_sel_impl = common dso_local global i32 0, align 4
@aes_impl_opts = common dso_local global %struct.TYPE_5__* null, align 8
@aes_impl_initialized = common dso_local global i64 0, align 8
@aes_supp_impl_cnt = common dso_local global i64 0, align 8
@aes_supp_impl = common dso_local global %struct.TYPE_4__** null, align 8
@icp_aes_impl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_impl_set(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @AES_IMPL_NAME_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @user_sel_impl, align 4
  %17 = call i64 @AES_IMPL_READ(i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @AES_IMPL_NAME_MAX, align 4
  %20 = call i64 @strnlen(i8* %18, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @AES_IMPL_NAME_MAX, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %117

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @AES_IMPL_NAME_MAX, align 4
  %33 = call i32 @strlcpy(i8* %15, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %46, %30
  %35 = load i64, i64* %8, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %15, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isspace(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %37, %34
  %45 = phi i1 [ false, %34 ], [ %43, %37 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %8, align 8
  br label %34

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i8, i8* %15, i64 %50
  store i8 0, i8* %51, align 1
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %72, %49
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aes_impl_opts, align 8
  %55 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %54)
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aes_impl_opts, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @strcmp(i8* %15, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aes_impl_opts, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %75

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %52

75:                                               ; preds = %65, %52
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = load i64, i64* @aes_impl_initialized, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %78
  store i64 0, i64* %8, align 8
  br label %82

82:                                               ; preds = %98, %81
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @aes_supp_impl_cnt, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @aes_supp_impl, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %87, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @strcmp(i8* %15, i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i64, i64* %8, align 8
  store i64 %96, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %101

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %8, align 8
  br label %82

101:                                              ; preds = %95, %82
  br label %102

102:                                              ; preds = %101, %78, %75
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i64, i64* @aes_impl_initialized, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @atomic_swap_32(i32* @icp_aes_impl, i64 %109)
  br label %114

111:                                              ; preds = %105
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @atomic_swap_32(i32* @user_sel_impl, i64 %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %102
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %115, %28
  %118 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @AES_IMPL_READ(i32) #2

declare dso_local i64 @strnlen(i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @atomic_swap_32(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
