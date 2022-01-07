; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_add_async_iorequest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_add_async_iorequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.async_iorequest* }
%struct.async_iorequest = type { i64, i8*, i32*, i8*, i8*, i32*, i64, i8*, i8*, i8*, i8*, %struct.async_iorequest* }

@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i32*, i8*)* @add_async_iorequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_async_iorequest(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6, i8* %7, i8* %8, i32* %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.async_iorequest*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32* %6, i32** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32* %9, i32** %22, align 8
  store i8* %10, i8** %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.async_iorequest*, %struct.async_iorequest** %26, align 8
  %28 = icmp eq %struct.async_iorequest* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %11
  %30 = call i64 @xmalloc(i32 96)
  %31 = inttoptr i64 %30 to %struct.async_iorequest*
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.async_iorequest* %31, %struct.async_iorequest** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.async_iorequest*, %struct.async_iorequest** %35, align 8
  %37 = icmp ne %struct.async_iorequest* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @False, align 4
  store i32 %39, i32* %12, align 4
  br label %122

40:                                               ; preds = %29
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.async_iorequest*, %struct.async_iorequest** %42, align 8
  %44 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.async_iorequest*, %struct.async_iorequest** %46, align 8
  %48 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %47, i32 0, i32 11
  store %struct.async_iorequest* null, %struct.async_iorequest** %48, align 8
  br label %49

49:                                               ; preds = %40, %11
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.async_iorequest*, %struct.async_iorequest** %51, align 8
  store %struct.async_iorequest* %52, %struct.async_iorequest** %24, align 8
  br label %53

53:                                               ; preds = %83, %49
  %54 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %55 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %53
  %59 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %60 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %59, i32 0, i32 11
  %61 = load %struct.async_iorequest*, %struct.async_iorequest** %60, align 8
  %62 = icmp eq %struct.async_iorequest* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = call i64 @xmalloc(i32 96)
  %65 = inttoptr i64 %64 to %struct.async_iorequest*
  %66 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %67 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %66, i32 0, i32 11
  store %struct.async_iorequest* %65, %struct.async_iorequest** %67, align 8
  %68 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %69 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %68, i32 0, i32 11
  %70 = load %struct.async_iorequest*, %struct.async_iorequest** %69, align 8
  %71 = icmp ne %struct.async_iorequest* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @False, align 4
  store i32 %73, i32* %12, align 4
  br label %122

74:                                               ; preds = %63
  %75 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %76 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %75, i32 0, i32 11
  %77 = load %struct.async_iorequest*, %struct.async_iorequest** %76, align 8
  %78 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %80 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %79, i32 0, i32 11
  %81 = load %struct.async_iorequest*, %struct.async_iorequest** %80, align 8
  %82 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %81, i32 0, i32 11
  store %struct.async_iorequest* null, %struct.async_iorequest** %82, align 8
  br label %83

83:                                               ; preds = %74, %58
  %84 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %85 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %84, i32 0, i32 11
  %86 = load %struct.async_iorequest*, %struct.async_iorequest** %85, align 8
  store %struct.async_iorequest* %86, %struct.async_iorequest** %24, align 8
  br label %53

87:                                               ; preds = %53
  %88 = load i8*, i8** %14, align 8
  %89 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %90 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %89, i32 0, i32 10
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %94 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %97 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %96, i32 0, i32 9
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %100 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %99, i32 0, i32 8
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %103 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %102, i32 0, i32 7
  store i8* %101, i8** %103, align 8
  %104 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %105 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %104, i32 0, i32 6
  store i64 0, i64* %105, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %108 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %107, i32 0, i32 5
  store i32* %106, i32** %108, align 8
  %109 = load i8*, i8** %20, align 8
  %110 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %111 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** %21, align 8
  %113 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %114 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i32*, i32** %22, align 8
  %116 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %117 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %116, i32 0, i32 2
  store i32* %115, i32** %117, align 8
  %118 = load i8*, i8** %23, align 8
  %119 = load %struct.async_iorequest*, %struct.async_iorequest** %24, align 8
  %120 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* @True, align 4
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %87, %72, %38
  %123 = load i32, i32* %12, align 4
  ret i32 %123
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
