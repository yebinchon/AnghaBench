; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_fletcher.c_fletcher_4_impl_set.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_fletcher.c_fletcher_4_impl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_4__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@fletcher_4_impl_chosen = common dso_local global i32 0, align 4
@fletcher_4_impl_selectors = common dso_local global %struct.TYPE_5__* null, align 8
@fletcher_4_initialized = common dso_local global i64 0, align 8
@fletcher_4_supp_impls_cnt = common dso_local global i64 0, align 8
@fletcher_4_supp_impls = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fletcher_4_impl_set(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @fletcher_4_impl_chosen, align 4
  %12 = call i64 @IMPL_READ(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @isspace(i8 signext %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %18, %15
  %29 = phi i1 [ false, %15 ], [ %27, %18 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %6, align 8
  br label %15

33:                                               ; preds = %28
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %62, %33
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fletcher_4_impl_selectors, align 8
  %37 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %36)
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fletcher_4_impl_selectors, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load i8*, i8** %2, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @strncmp(i8* %50, i8* %51, i64 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fletcher_4_impl_selectors, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %65

61:                                               ; preds = %49, %39
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %34

65:                                               ; preds = %55, %34
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %65
  %69 = load i64, i64* @fletcher_4_initialized, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %68
  store i64 0, i64* %5, align 8
  br label %72

72:                                               ; preds = %96, %71
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @fletcher_4_supp_impls_cnt, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @fletcher_4_supp_impls, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %78
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %8, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i64 @strlen(i8* %84)
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load i8*, i8** %2, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @strncmp(i8* %88, i8* %89, i64 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i64, i64* %5, align 8
  store i64 %94, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %99

95:                                               ; preds = %87, %76
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %5, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %5, align 8
  br label %72

99:                                               ; preds = %93, %72
  br label %100

100:                                              ; preds = %99, %68, %65
  %101 = load i32, i32* %3, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i64, i64* %4, align 8
  %105 = call i32 @atomic_swap_32(i32* @fletcher_4_impl_chosen, i64 %104)
  %106 = call i32 (...) @membar_producer()
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @IMPL_READ(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @atomic_swap_32(i32*, i64) #1

declare dso_local i32 @membar_producer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
