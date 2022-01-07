; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_propagatemark.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_propagatemark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_43__, %struct.TYPE_42__ }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_49__ = type { i64 }
%struct.TYPE_45__ = type { i32, i32 }

@LJ_TTAB = common dso_local global i32 0, align 4
@LJ_TFUNC = common dso_local global i32 0, align 4
@LJ_TPROTO = common dso_local global i32 0, align 4
@LJ_TTHREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_46__*)* @propagatemark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @propagatemark(%struct.TYPE_46__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_46__*, align 8
  %4 = alloca %struct.TYPE_39__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_48__*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.TYPE_49__*, align 8
  %9 = alloca %struct.TYPE_45__*, align 8
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %3, align 8
  %10 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_39__* @gcref(i32 %13)
  store %struct.TYPE_39__* %14, %struct.TYPE_39__** %4, align 8
  %15 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %20 = call i32 @isgray(%struct.TYPE_39__* %19)
  %21 = call i32 @lua_assert(i32 %20)
  %22 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %23 = call i32 @gray2black(%struct.TYPE_39__* %22)
  %24 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @setgcrefr(i32 %27, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @LJ_TTAB, align 4
  %35 = xor i32 %34, -1
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @LJ_LIKELY(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %1
  %41 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %42 = call %struct.TYPE_48__* @gco2tab(%struct.TYPE_39__* %41)
  store %struct.TYPE_48__* %42, %struct.TYPE_48__** %6, align 8
  %43 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %44 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %45 = call i64 @gc_traverse_tab(%struct.TYPE_46__* %43, %struct.TYPE_48__* %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %49 = call i32 @black2gray(%struct.TYPE_39__* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = add i64 8, %55
  %57 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  br label %69

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %61
  %70 = phi i64 [ %67, %61 ], [ 0, %68 ]
  %71 = add i64 %56, %70
  store i64 %71, i64* %2, align 8
  br label %160

72:                                               ; preds = %1
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @LJ_TFUNC, align 4
  %75 = xor i32 %74, -1
  %76 = icmp eq i32 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @LJ_LIKELY(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %72
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %82 = call %struct.TYPE_40__* @gco2func(%struct.TYPE_39__* %81)
  store %struct.TYPE_40__* %82, %struct.TYPE_40__** %7, align 8
  %83 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %84 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %85 = call i32 @gc_traverse_func(%struct.TYPE_46__* %83, %struct.TYPE_40__* %84)
  %86 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %87 = call i64 @isluafunc(%struct.TYPE_40__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %80
  %90 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i64 @sizeLfunc(i32 %94)
  br label %103

96:                                               ; preds = %80
  %97 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i64 @sizeCfunc(i32 %101)
  br label %103

103:                                              ; preds = %96, %89
  %104 = phi i64 [ %95, %89 ], [ %102, %96 ]
  store i64 %104, i64* %2, align 8
  br label %160

105:                                              ; preds = %72
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @LJ_TPROTO, align 4
  %108 = xor i32 %107, -1
  %109 = icmp eq i32 %106, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @LJ_LIKELY(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %115 = call %struct.TYPE_49__* @gco2pt(%struct.TYPE_39__* %114)
  store %struct.TYPE_49__* %115, %struct.TYPE_49__** %8, align 8
  %116 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %117 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %118 = call i32 @gc_traverse_proto(%struct.TYPE_46__* %116, %struct.TYPE_49__* %117)
  %119 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %2, align 8
  br label %160

122:                                              ; preds = %105
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @LJ_TTHREAD, align 4
  %125 = xor i32 %124, -1
  %126 = icmp eq i32 %123, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @LJ_LIKELY(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %158

130:                                              ; preds = %122
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %132 = call %struct.TYPE_45__* @gco2th(%struct.TYPE_39__* %131)
  store %struct.TYPE_45__* %132, %struct.TYPE_45__** %9, align 8
  %133 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @setgcrefr(i32 %135, i32 %139)
  %141 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %146 = call i32 @setgcref(i32 %144, %struct.TYPE_39__* %145)
  %147 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %148 = call i32 @black2gray(%struct.TYPE_39__* %147)
  %149 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %150 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %151 = call i32 @gc_traverse_thread(%struct.TYPE_46__* %149, %struct.TYPE_45__* %150)
  %152 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 4, %155
  %157 = add i64 8, %156
  store i64 %157, i64* %2, align 8
  br label %160

158:                                              ; preds = %122
  %159 = call i32 @lua_assert(i32 0)
  store i64 0, i64* %2, align 8
  br label %160

160:                                              ; preds = %158, %130, %113, %103, %69
  %161 = load i64, i64* %2, align 8
  ret i64 %161
}

declare dso_local %struct.TYPE_39__* @gcref(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isgray(%struct.TYPE_39__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_39__*) #1

declare dso_local i32 @setgcrefr(i32, i32) #1

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local %struct.TYPE_48__* @gco2tab(%struct.TYPE_39__*) #1

declare dso_local i64 @gc_traverse_tab(%struct.TYPE_46__*, %struct.TYPE_48__*) #1

declare dso_local i32 @black2gray(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_40__* @gco2func(%struct.TYPE_39__*) #1

declare dso_local i32 @gc_traverse_func(%struct.TYPE_46__*, %struct.TYPE_40__*) #1

declare dso_local i64 @isluafunc(%struct.TYPE_40__*) #1

declare dso_local i64 @sizeLfunc(i32) #1

declare dso_local i64 @sizeCfunc(i32) #1

declare dso_local %struct.TYPE_49__* @gco2pt(%struct.TYPE_39__*) #1

declare dso_local i32 @gc_traverse_proto(%struct.TYPE_46__*, %struct.TYPE_49__*) #1

declare dso_local %struct.TYPE_45__* @gco2th(%struct.TYPE_39__*) #1

declare dso_local i32 @setgcref(i32, %struct.TYPE_39__*) #1

declare dso_local i32 @gc_traverse_thread(%struct.TYPE_46__*, %struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
