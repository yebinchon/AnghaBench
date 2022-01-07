; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_add_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_add_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@StringPersistent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid index adding %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i8*, i64, i32, i32)* @add_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_string(%struct.TYPE_8__* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %6
  store i32 0, i32* %7, align 4
  br label %133

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %25
  store i32 -1, i32* %7, align 4
  br label %133

44:                                               ; preds = %34
  br label %87

45:                                               ; preds = %22
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @string2id(%struct.TYPE_8__* %46, i8* %47, i64* %9)
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @StringPersistent, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %57
  store i64 %65, i64* %63, align 8
  br label %77

66:                                               ; preds = %51
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %68
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %66, %55
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %7, align 4
  br label %133

80:                                               ; preds = %45
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = call i64 @st_find_free_entry(%struct.TYPE_8__* %81)
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp eq i64 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 -1, i32* %7, align 4
  br label %133

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %44
  %88 = load i64, i64* %9, align 8
  %89 = icmp ult i64 %88, 1
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @debugstr_a(i8* %91)
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %92, i64 %93)
  store i32 -1, i32* %7, align 4
  br label %133

95:                                               ; preds = %87
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @MultiByteToWideChar(i32 %98, i32 0, i8* %99, i64 %100, i64* null, i32 0)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i64* @msi_alloc(i32 %106)
  store i64* %107, i64** %14, align 8
  %108 = load i64*, i64** %14, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %95
  store i32 -1, i32* %7, align 4
  br label %133

111:                                              ; preds = %95
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64*, i64** %14, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @MultiByteToWideChar(i32 %114, i32 0, i8* %115, i64 %116, i64* %117, i32 %118)
  %120 = load i64*, i64** %14, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i64*, i64** %14, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @set_st_entry(%struct.TYPE_8__* %124, i64 %125, i64* %126, i32 %127, i32 %128, i32 %129)
  %131 = load i64, i64* %9, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %111, %110, %90, %85, %77, %43, %21
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i64 @string2id(%struct.TYPE_8__*, i8*, i64*) #1

declare dso_local i64 @st_find_free_entry(%struct.TYPE_8__*) #1

declare dso_local i32 @ERR(i8*, i32, i64) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i64, i64*, i32) #1

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i32 @set_st_entry(%struct.TYPE_8__*, i64, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
