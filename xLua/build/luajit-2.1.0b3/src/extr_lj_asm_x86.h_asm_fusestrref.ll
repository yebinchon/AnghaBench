; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fusestrref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fusestrref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i64 }

@IR_STRREF = common dso_local global i64 0, align 8
@RID_NONE = common dso_local global i64 0, align 8
@XM_SCALE1 = common dso_local global i32 0, align 4
@LJ_GC64 = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @asm_fusestrref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_fusestrref(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IR_STRREF, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @lua_assert(i32 %15)
  %17 = load i64, i64* @RID_NONE, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i64 %17, i64* %23, align 8
  %24 = load i32, i32* @XM_SCALE1, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  store i32 4, i32* %30, align 8
  %31 = load i32, i32* @LJ_GC64, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @irref_isk(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_10__* @IR(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %45
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  br label %69

53:                                               ; preds = %33, %3
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @ra_alloc1(%struct.TYPE_11__* %54, i32 %57, i32 %58)
  store i64 %59, i64* %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @rset_clear(i32 %60, i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  br label %69

69:                                               ; preds = %53, %39
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_10__* @IR(i32 %72)
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %7, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @irref_isk(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %69
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %82
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  br label %161

90:                                               ; preds = %69
  %91 = load i32, i32* @LJ_64, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %132, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @mayfuse(%struct.TYPE_11__* %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %93
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IR_ADD, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %132

106:                                              ; preds = %100
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @irref_isk(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %106
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.TYPE_10__* @IR(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %118
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i64 @ra_alloc1(%struct.TYPE_11__* %126, i32 %129, i32 %130)
  store i64 %131, i64* %9, align 8
  br label %139

132:                                              ; preds = %106, %100, %93, %90
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i64 @ra_alloc1(%struct.TYPE_11__* %133, i32 %136, i32 %137)
  store i64 %138, i64* %9, align 8
  br label %139

139:                                              ; preds = %132, %112
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @RID_NONE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %139
  %147 = load i64, i64* %9, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  br label %160

153:                                              ; preds = %139
  %154 = load i64, i64* %9, align 8
  %155 = inttoptr i64 %154 to i8*
  %156 = ptrtoint i8* %155 to i64
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  store i64 %156, i64* %159, align 8
  br label %160

160:                                              ; preds = %153, %146
  br label %161

161:                                              ; preds = %160, %79
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local %struct.TYPE_10__* @IR(i32) #1

declare dso_local i64 @ra_alloc1(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @rset_clear(i32, i64) #1

declare dso_local i64 @mayfuse(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
