; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_create_addr_query.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_create_addr_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8**, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8* }
%struct.sockaddr_in = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%ud\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\07in-addr\04arpa\00\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\00\0C\00\01\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_12__*, %struct.TYPE_14__*)* @ngx_resolver_create_addr_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_resolver_create_addr_query(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.sockaddr_in*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %21 [
  ]

21:                                               ; preds = %3
  store i64 122, i64* %10, align 8
  br label %22

22:                                               ; preds = %21
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i8** @ngx_resolver_alloc(i32* %23, i64 %24)
  store i8** %25, i8*** %8, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = icmp eq i8** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @NGX_ERROR, align 8
  store i64 %29, i64* %4, align 8
  br label %128

30:                                               ; preds = %22
  %31 = load i8**, i8*** %8, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i8** %31, i8*** %33, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = bitcast i8** %34 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %14, align 8
  %36 = call i32 (...) @ngx_random()
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 11
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = and i32 %44, 255
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 10
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 9
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 8
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load i8**, i8*** %8, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 88
  store i8** %71, i8*** %8, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %77 [
  ]

77:                                               ; preds = %30
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = bitcast %struct.TYPE_10__* %80 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %81, %struct.sockaddr_in** %15, align 8
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ntohl(i32 %85)
  store i64 %86, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %87

87:                                               ; preds = %108, %77
  %88 = load i64, i64* %12, align 8
  %89 = icmp ult i64 %88, 32
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load i8**, i8*** %8, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = lshr i64 %93, %94
  %96 = and i64 %95, 255
  %97 = call i8** (i8**, i8*, i64, ...) @ngx_sprintf(i8** %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %96)
  store i8** %97, i8*** %9, align 8
  %98 = load i8**, i8*** %9, align 8
  %99 = load i8**, i8*** %8, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  %101 = ptrtoint i8** %98 to i64
  %102 = ptrtoint i8** %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8**, i8*** %8, align 8
  store i8* %105, i8** %106, align 8
  %107 = load i8**, i8*** %9, align 8
  store i8** %107, i8*** %8, align 8
  br label %108

108:                                              ; preds = %90
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, 8
  store i64 %110, i64* %12, align 8
  br label %87

111:                                              ; preds = %87
  %112 = load i8**, i8*** %8, align 8
  %113 = call i8** @ngx_cpymem(i8** %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 14)
  store i8** %113, i8*** %8, align 8
  br label %114

114:                                              ; preds = %111
  %115 = load i8**, i8*** %8, align 8
  %116 = call i8** @ngx_cpymem(i8** %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i8** %116, i8*** %8, align 8
  %117 = load i8**, i8*** %8, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = ptrtoint i8** %117 to i64
  %122 = ptrtoint i8** %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* @NGX_OK, align 8
  store i64 %127, i64* %4, align 8
  br label %128

128:                                              ; preds = %114, %28
  %129 = load i64, i64* %4, align 8
  ret i64 %129
}

declare dso_local i8** @ngx_resolver_alloc(i32*, i64) #1

declare dso_local i32 @ngx_random(...) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i8** @ngx_sprintf(i8**, i8*, i64, ...) #1

declare dso_local i8** @ngx_cpymem(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
