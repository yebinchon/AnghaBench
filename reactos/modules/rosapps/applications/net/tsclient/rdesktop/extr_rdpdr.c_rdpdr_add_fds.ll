; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_add_fds.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_add_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.async_iorequest* }
%struct.async_iorequest = type { i64, i32, i32, i32, %struct.async_iorequest*, i32 }
%struct.timeval = type { i32, i32 }

@True = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdpdr_add_fds(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, %struct.timeval* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.async_iorequest*, align 8
  %15 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.timeval* %4, %struct.timeval** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.async_iorequest*, %struct.async_iorequest** %17, align 8
  store %struct.async_iorequest* %18, %struct.async_iorequest** %14, align 8
  br label %19

19:                                               ; preds = %147, %6
  %20 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %21 = icmp ne %struct.async_iorequest* %20, null
  br i1 %21, label %22, label %151

22:                                               ; preds = %19
  %23 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %24 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %147

27:                                               ; preds = %22
  %28 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %29 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %146 [
    i32 129, label %31
    i32 128, label %117
    i32 130, label %141
  ]

31:                                               ; preds = %27
  %32 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %33 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @FD_SET(i64 %34, i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %40 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @MAX(i32 %38, i64 %41)
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %45 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %31
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %53 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51, %48
  %58 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %59 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  %61 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %62 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sdiv i32 %66, 1000
  %68 = load %struct.timeval*, %struct.timeval** %11, align 8
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %13, align 4
  %71 = srem i32 %70, 1000
  %72 = mul nsw i32 %71, 1000
  %73 = load %struct.timeval*, %struct.timeval** %11, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @True, align 4
  %76 = load i32*, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  br label %146

77:                                               ; preds = %51, %31
  %78 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %79 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %77
  %83 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %84 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %92 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %90, %87
  %97 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %98 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %13, align 4
  %100 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %101 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sdiv i32 %105, 1000
  %107 = load %struct.timeval*, %struct.timeval** %11, align 8
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = srem i32 %109, 1000
  %111 = mul nsw i32 %110, 1000
  %112 = load %struct.timeval*, %struct.timeval** %11, align 8
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @True, align 4
  %115 = load i32*, i32** %12, align 8
  store i32 %114, i32* %115, align 4
  br label %146

116:                                              ; preds = %90, %82, %77
  br label %146

117:                                              ; preds = %27
  %118 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %119 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @write(i64 %120, i8* %15, i32 0)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i32, i32* @errno, align 4
  %125 = load i32, i32* @EBADF, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %146

128:                                              ; preds = %123, %117
  %129 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %130 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @FD_SET(i64 %131, i32* %132)
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %137 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @MAX(i32 %135, i64 %138)
  %140 = load i32*, i32** %8, align 8
  store i32 %139, i32* %140, align 4
  br label %146

141:                                              ; preds = %27
  %142 = load i32, i32* %13, align 4
  %143 = icmp sgt i32 %142, 5
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 5, i32* %13, align 4
  br label %145

145:                                              ; preds = %144, %141
  br label %146

146:                                              ; preds = %27, %145, %128, %127, %116, %96, %57
  br label %147

147:                                              ; preds = %146, %22
  %148 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  %149 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %148, i32 0, i32 4
  %150 = load %struct.async_iorequest*, %struct.async_iorequest** %149, align 8
  store %struct.async_iorequest* %150, %struct.async_iorequest** %14, align 8
  br label %19

151:                                              ; preds = %19
  ret void
}

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @write(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
