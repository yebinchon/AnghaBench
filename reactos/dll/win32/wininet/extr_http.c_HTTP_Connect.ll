; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_Connect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_Connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, i64, i32, i32, i8*, i8*, i8*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"-->\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@WH_HINIT = common dso_local global i64 0, align 8
@HTTPSESSIONVtbl = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@WH_HHTTPSESSION = common dso_local global i32 0, align 4
@INET_OPENURL = common dso_local global i32 0, align 4
@INTERNET_STATUS_HANDLE_CREATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%p --> %p\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTTP_Connect(%struct.TYPE_11__* %0, i64* %1, i32 %2, i64* %3, i64* %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %11, align 8
  store i64* %1, i64** %12, align 8
  store i32 %2, i32* %13, align 4
  store i64* %3, i64** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %20, align 8
  %21 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = load i64*, i64** %12, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %9
  %25 = load i64*, i64** %12, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %9
  %30 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %30, i32* %10, align 4
  br label %154

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WH_HINIT, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = call %struct.TYPE_10__* @alloc_object(%struct.TYPE_12__* %41, i32* @HTTPSESSIONVtbl, i32 88)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %20, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %46, i32* %10, align 4
  br label %154

47:                                               ; preds = %31
  %48 = load i32, i32* @WH_HHTTPSESSION, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = call i32 @WININET_AddRef(%struct.TYPE_12__* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 8
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = call i32 @list_add_head(i32* %81, i32* %84)
  %86 = load i64*, i64** %12, align 8
  %87 = call i8* @heap_strdupW(i64* %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  %90 = load i64*, i64** %14, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %47
  %93 = load i64*, i64** %14, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i64*, i64** %14, align 8
  %99 = call i8* @heap_strdupW(i64* %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %97, %92, %47
  %103 = load i64*, i64** %15, align 8
  %104 = icmp ne i64* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i64*, i64** %15, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i64*, i64** %15, align 8
  %112 = call i8* @heap_strdupW(i64* %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %105, %102
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @INET_OPENURL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %115
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @INTERNET_STATUS_HANDLE_CREATED, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = call i32 @INTERNET_SendCallback(%struct.TYPE_12__* %137, i32 %138, i32 %139, i32* %142, i32 4)
  br label %144

144:                                              ; preds = %135, %115
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %147 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %145, %struct.TYPE_10__* %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32*, i32** %19, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %144, %45, %29
  %155 = load i32, i32* %10, align 4
  ret i32 %155
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @alloc_object(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @WININET_AddRef(%struct.TYPE_12__*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i8* @heap_strdupW(i64*) #1

declare dso_local i32 @INTERNET_SendCallback(%struct.TYPE_12__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
