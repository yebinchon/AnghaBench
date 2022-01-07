; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fusearef.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fusearef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8*, i32, i8* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }

@IR_AREF = common dso_local global i64 0, align 8
@RID_NONE = common dso_local global i8* null, align 8
@XM_SCALE8 = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*, i32)* @asm_fusearef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_fusearef(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IR_AREF, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @lua_assert(i32 %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @asm_fuseabase(%struct.TYPE_12__* %16, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @ra_alloc1(%struct.TYPE_12__* %15, i32 %20, i32 %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  store i8* %23, i8** %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_11__* @IR(i32 %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %7, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @irref_isk(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %3
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 8, %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %40
  store i32 %45, i32* %43, align 8
  %46 = load i8*, i8** @RID_NONE, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  br label %123

50:                                               ; preds = %3
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @rset_clear(i32 %51, i8* %55)
  %57 = load i32, i32* @XM_SCALE8, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @LJ_64, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %111, label %63

63:                                               ; preds = %50
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @mayfuse(%struct.TYPE_12__* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %111

70:                                               ; preds = %63
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ra_noreg(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IR_ADD, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %76
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @irref_isk(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %82
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.TYPE_11__* @IR(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 8, %94
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %95
  store i32 %100, i32* %98, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i64 @ra_alloc1(%struct.TYPE_12__* %101, i32 %104, i32 %105)
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  br label %122

111:                                              ; preds = %82, %76, %70, %63, %50
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i64 @ra_alloc1(%struct.TYPE_12__* %112, i32 %115, i32 %116)
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %111, %88
  br label %123

123:                                              ; preds = %122, %36
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ra_alloc1(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @asm_fuseabase(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @IR(i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local i32 @rset_clear(i32, i8*) #1

declare dso_local i64 @mayfuse(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ra_noreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
