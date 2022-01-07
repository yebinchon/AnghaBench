; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snapshot_framelinks.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snapshot_framelinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i32 }

@LJ_FR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @snapshot_framelinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_framelinks(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 -1
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = ptrtoint i32* %20 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @frame_func(i32* %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @isluafunc(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call %struct.TYPE_7__* @funcproto(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  br label %48

42:                                               ; preds = %2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  br label %48

48:                                               ; preds = %42, %34
  %49 = phi i32* [ %41, %34 ], [ %47, %42 ]
  store i32* %49, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %50 = load i32, i32* @LJ_FR2, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @lua_assert(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SNAP_MKPC(i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %9, align 8
  %62 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %139, %102, %48
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = icmp ugt i32* %64, %65
  br i1 %66, label %67, label %140

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = call i64 @frame_islua(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @frame_pc(i32* %72)
  %74 = call i32 @SNAP_MKPC(i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* %9, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %9, align 8
  %78 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %74, i32* %78, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = call i32* @frame_prevl(i32* %79)
  store i32* %80, i32** %5, align 8
  br label %119

81:                                               ; preds = %67
  %82 = load i32*, i32** %5, align 8
  %83 = call i64 @frame_iscont(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @frame_ftsz(i32* %86)
  %88 = call i32 @SNAP_MKFTSZ(i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %9, align 8
  %92 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %88, i32* %92, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @frame_contpc(i32* %93)
  %95 = call i32 @SNAP_MKPC(i32 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %9, align 8
  %99 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %95, i32* %99, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = call i32* @frame_prevd(i32* %100)
  store i32* %101, i32** %5, align 8
  br label %118

102:                                              ; preds = %81
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @frame_isc(i32* %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @lua_assert(i32 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @frame_ftsz(i32* %109)
  %111 = call i32 @SNAP_MKFTSZ(i32 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = load i64, i64* %9, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %9, align 8
  %115 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %111, i32* %115, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = call i32* @frame_prevd(i32* %116)
  store i32* %117, i32** %5, align 8
  br label %63

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %118, %71
  %120 = load i32*, i32** %5, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i32* @frame_func(i32* %121)
  %123 = call %struct.TYPE_7__* @funcproto(i32* %122)
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  %128 = load i32*, i32** %8, align 8
  %129 = icmp ugt i32* %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %119
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = call i32* @frame_func(i32* %132)
  %134 = call %struct.TYPE_7__* @funcproto(i32* %133)
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  store i32* %138, i32** %8, align 8
  br label %139

139:                                              ; preds = %130, %119
  br label %63

140:                                              ; preds = %63
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 1, %144
  %146 = icmp eq i64 %141, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @lua_assert(i32 %147)
  %149 = load i32*, i32** %8, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = ptrtoint i32* %149 to i64
  %152 = ptrtoint i32* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 4
  %155 = trunc i64 %154 to i32
  ret i32 %155
}

declare dso_local i32* @frame_func(i32*) #1

declare dso_local i64 @isluafunc(i32*) #1

declare dso_local %struct.TYPE_7__* @funcproto(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @SNAP_MKPC(i32) #1

declare dso_local i64 @frame_islua(i32*) #1

declare dso_local i32 @frame_pc(i32*) #1

declare dso_local i32* @frame_prevl(i32*) #1

declare dso_local i64 @frame_iscont(i32*) #1

declare dso_local i32 @SNAP_MKFTSZ(i32) #1

declare dso_local i32 @frame_ftsz(i32*) #1

declare dso_local i32 @frame_contpc(i32*) #1

declare dso_local i32* @frame_prevd(i32*) #1

declare dso_local i32 @frame_isc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
