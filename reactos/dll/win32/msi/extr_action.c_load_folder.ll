; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_folder.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_folder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i8*, i8*, i32 }

@load_folder.szEmpty = internal global [1 x i32] zeroinitializer, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@szDot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"TargetDefault = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SourceLong = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SourceShort = %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @load_folder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_folder(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  %14 = call %struct.TYPE_9__* @msi_alloc_zero(i32 56)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %12, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %17, i32* %3, align 4
  br label %117

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 6
  %21 = call i32 @list_init(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @msi_dup_record_field(i32* %22, i32 1)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @msi_dup_record_field(i32* %26, i32 2)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @msi_dup_record_field(i32* %30, i32 3)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %7, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @debugstr_w(i8* %35)
  %37 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %7, align 8
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32* @folder_split_path(i32* %39, i8 signext 58)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32* @folder_split_path(i32* %41, i8 signext 124)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @folder_split_path(i32* %43, i8 signext 124)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %18
  %48 = load i32, i32* @szDot, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @strcmpW(i32 %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @load_folder.szEmpty, i64 0, i64 0), i32** %8, align 8
  br label %53

53:                                               ; preds = %52, %47, %18
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @szDot, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @strcmpW(i32 %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @load_folder.szEmpty, i64 0, i64 0), i32** %10, align 8
  br label %62

62:                                               ; preds = %61, %56, %53
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i32*, i32** %8, align 8
  store i32* %66, i32** %9, align 8
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32*, i32** %8, align 8
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %9, align 8
  store i32* %72, i32** %11, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %10, align 8
  store i32* %77, i32** %11, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32*, i32** %9, align 8
  %80 = call i8* @strdupW(i32* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i8* @strdupW(i32* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = call i8* @strdupW(i32* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @msi_free(i32* %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @debugstr_w(i8* %95)
  %97 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @debugstr_w(i8* %100)
  %102 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @debugstr_w(i8* %105)
  %107 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %110 = call i32 @load_folder_persistence(%struct.TYPE_8__* %108, %struct.TYPE_9__* %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = call i32 @list_add_tail(i32* %112, i32* %114)
  %116 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %78, %16
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_9__* @msi_alloc_zero(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i8* @msi_dup_record_field(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32* @folder_split_path(i32*, i8 signext) #1

declare dso_local i32 @strcmpW(i32, i32*) #1

declare dso_local i8* @strdupW(i32*) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @load_folder_persistence(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
