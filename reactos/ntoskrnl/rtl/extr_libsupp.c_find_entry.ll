; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/rtl/extr_libsupp.c_find_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/rtl/extr_libsupp.c_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@IMAGE_DIRECTORY_ENTRY_RESOURCE = common dso_local global i32 0, align 4
@STATUS_RESOURCE_DATA_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_RESOURCE_TYPE_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_RESOURCE_NAME_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_entry(i32 %0, %struct.TYPE_3__* %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = load i32, i32* @IMAGE_DIRECTORY_ENTRY_RESOURCE, align 4
  %18 = call i8* @RtlImageDirectoryEntryToData(i32 %15, i32 %16, i32 %17, i32* %12)
  store i8* %18, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @STATUS_RESOURCE_DATA_NOT_FOUND, align 4
  store i32 %22, i32* %6, align 4
  br label %111

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @STATUS_RESOURCE_DATA_NOT_FOUND, align 4
  store i32 %28, i32* %6, align 4
  br label %111

29:                                               ; preds = %23
  %30 = load i8*, i8** %13, align 8
  store i8* %30, i8** %14, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %9, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %107

35:                                               ; preds = %29
  %36 = load i8*, i8** %14, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %35
  %48 = phi i1 [ true, %35 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = call i8* @find_entry_by_name(i8* %36, i32 %40, i8* %41, i32 %49)
  %51 = load i8**, i8*** %10, align 8
  store i8* %50, i8** %51, align 8
  %52 = icmp ne i8* %50, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @STATUS_RESOURCE_TYPE_NOT_FOUND, align 4
  store i32 %54, i32* %6, align 4
  br label %111

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %60, i32* %6, align 4
  br label %111

61:                                               ; preds = %55
  %62 = load i8**, i8*** %10, align 8
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %72, %61
  %76 = phi i1 [ true, %61 ], [ %74, %72 ]
  %77 = zext i1 %76 to i32
  %78 = call i8* @find_entry_by_name(i8* %64, i32 %68, i8* %69, i32 %77)
  %79 = load i8**, i8*** %10, align 8
  store i8* %78, i8** %79, align 8
  %80 = icmp ne i8* %78, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @STATUS_RESOURCE_NAME_NOT_FOUND, align 4
  store i32 %82, i32* %6, align 4
  br label %111

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %88, i32* %6, align 4
  br label %111

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %93, i32* %6, align 4
  br label %111

94:                                               ; preds = %89
  %95 = load i8**, i8*** %10, align 8
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %14, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i8* @find_first_entry(i8* %97, i8* %98, i32 %99)
  %101 = load i8**, i8*** %10, align 8
  store i8* %100, i8** %101, align 8
  %102 = icmp ne i8* %100, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %104, i32* %6, align 4
  br label %111

105:                                              ; preds = %94
  %106 = load i32, i32* @STATUS_RESOURCE_DATA_NOT_FOUND, align 4
  store i32 %106, i32* %6, align 4
  br label %111

107:                                              ; preds = %34
  %108 = load i8*, i8** %14, align 8
  %109 = load i8**, i8*** %10, align 8
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %105, %103, %92, %87, %81, %59, %53, %27, %21
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i8* @RtlImageDirectoryEntryToData(i32, i32, i32, i32*) #1

declare dso_local i8* @find_entry_by_name(i8*, i32, i8*, i32) #1

declare dso_local i8* @find_first_entry(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
