; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_lj_snap_shrink.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_lj_snap_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64 }

@SNAP_USEDEF_SLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_snap_shrink(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %24
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %3, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %4, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* @SNAP_USEDEF_SLOTS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %9, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %10, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 @snap_pc(i32* %50)
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @snap_usedef(%struct.TYPE_7__* %47, i64* %40, i32 %51, i64 %52)
  store i64 %53, i64* %13, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %63

63:                                               ; preds = %97, %1
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @snap_slot(i32 %71)
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %67
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %12, align 8
  %83 = sub nsw i64 %81, %82
  %84 = getelementptr inbounds i64, i64* %40, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80, %67
  %88 = load i32*, i32** %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %6, align 8
  %95 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %80, %76
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %5, align 8
  br label %63

100:                                              ; preds = %63
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %107, %110
  %112 = sub i64 %111, 1
  store i64 %112, i64* %7, align 8
  br label %113

113:                                              ; preds = %117, %100
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* %7, align 8
  %116 = icmp ule i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32*, i32** %4, align 8
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %5, align 8
  %121 = getelementptr inbounds i32, i32* %118, i64 %119
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %6, align 8
  %126 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %122, i32* %126, align 4
  br label %113

127:                                              ; preds = %113
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %130, %131
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i64 %132, i64* %135, align 8
  %136 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %136)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snap_usedef(%struct.TYPE_7__*, i64*, i32, i64) #2

declare dso_local i32 @snap_pc(i32*) #2

declare dso_local i64 @snap_slot(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
