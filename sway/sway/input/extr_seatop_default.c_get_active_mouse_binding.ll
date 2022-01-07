; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_get_active_mouse_binding.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_get_active_mouse_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_binding = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, i64 }
%struct.seatop_default_event = type { i64, i64* }
%struct.TYPE_5__ = type { i32, %struct.sway_binding** }

@BINDING_TITLEBAR = common dso_local global i64 0, align 8
@BINDING_BORDER = common dso_local global i64 0, align 8
@BINDING_CONTENTS = common dso_local global i64 0, align 8
@BINDING_RELEASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_binding* (%struct.seatop_default_event*, %struct.TYPE_5__*, i64, i32, i32, i32, i32, i32, i8*)* @get_active_mouse_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_binding* @get_active_mouse_binding(%struct.seatop_default_event* %0, %struct.TYPE_5__* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca %struct.seatop_default_event*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.sway_binding*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sway_binding*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.seatop_default_event* %0, %struct.seatop_default_event** %10, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %9
  %32 = load i64, i64* @BINDING_TITLEBAR, align 8
  br label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i64 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %34
  %42 = load i64, i64* @BINDING_BORDER, align 8
  br label %44

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i64 [ %42, %41 ], [ 0, %43 ]
  %46 = or i64 %35, %45
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %44
  %53 = load i64, i64* @BINDING_CONTENTS, align 8
  br label %55

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i64 [ %53, %52 ], [ 0, %54 ]
  %57 = or i64 %46, %56
  store i64 %57, i64* %19, align 8
  store %struct.sway_binding* null, %struct.sway_binding** %20, align 8
  store i32 0, i32* %21, align 4
  br label %58

58:                                               ; preds = %185, %55
  %59 = load i32, i32* %21, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %188

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.sway_binding**, %struct.sway_binding*** %66, align 8
  %68 = load i32, i32* %21, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sway_binding*, %struct.sway_binding** %67, i64 %69
  %71 = load %struct.sway_binding*, %struct.sway_binding** %70, align 8
  store %struct.sway_binding* %71, %struct.sway_binding** %22, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.sway_binding*, %struct.sway_binding** %22, align 8
  %74 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = xor i64 %72, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %129, label %78

78:                                               ; preds = %64
  %79 = load %struct.seatop_default_event*, %struct.seatop_default_event** %10, align 8
  %80 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sway_binding*, %struct.sway_binding** %22, align 8
  %83 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %81, %86
  br i1 %87, label %129, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.sway_binding*, %struct.sway_binding** %22, align 8
  %91 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BINDING_RELEASE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %89, %94
  br i1 %95, label %129, label %96

96:                                               ; preds = %88
  %97 = load i64, i64* %19, align 8
  %98 = load %struct.sway_binding*, %struct.sway_binding** %22, align 8
  %99 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = and i64 %97, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %96
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i64, i64* %19, align 8
  %109 = load %struct.sway_binding*, %struct.sway_binding** %22, align 8
  %110 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = and i64 %108, %112
  %114 = load i64, i64* %19, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %129, label %116

116:                                              ; preds = %107, %104
  %117 = load %struct.sway_binding*, %struct.sway_binding** %22, align 8
  %118 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %18, align 8
  %121 = call i64 @strcmp(i32 %119, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load %struct.sway_binding*, %struct.sway_binding** %22, align 8
  %125 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @strcmp(i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %107, %96, %88, %78, %64
  br label %185

130:                                              ; preds = %123, %116
  store i32 1, i32* %23, align 4
  store i64 0, i64* %24, align 8
  br label %131

131:                                              ; preds = %158, %130
  %132 = load i64, i64* %24, align 8
  %133 = load %struct.seatop_default_event*, %struct.seatop_default_event** %10, align 8
  %134 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ult i64 %132, %135
  br i1 %136, label %137, label %161

137:                                              ; preds = %131
  %138 = load %struct.sway_binding*, %struct.sway_binding** %22, align 8
  %139 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %138, i32 0, i32 3
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %24, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %25, align 8
  %148 = load i64, i64* %25, align 8
  %149 = load %struct.seatop_default_event*, %struct.seatop_default_event** %10, align 8
  %150 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %149, i32 0, i32 1
  %151 = load i64*, i64** %150, align 8
  %152 = load i64, i64* %24, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %148, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %137
  store i32 0, i32* %23, align 4
  br label %161

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %24, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %24, align 8
  br label %131

161:                                              ; preds = %156, %131
  %162 = load i32, i32* %23, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  br label %185

165:                                              ; preds = %161
  %166 = load %struct.sway_binding*, %struct.sway_binding** %20, align 8
  %167 = icmp ne %struct.sway_binding* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.sway_binding*, %struct.sway_binding** %20, align 8
  %170 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @strcmp(i32 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %168, %165
  %175 = load %struct.sway_binding*, %struct.sway_binding** %22, align 8
  store %struct.sway_binding* %175, %struct.sway_binding** %20, align 8
  %176 = load %struct.sway_binding*, %struct.sway_binding** %20, align 8
  %177 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i8*, i8** %18, align 8
  %180 = call i64 @strcmp(i32 %178, i8* %179)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %188

183:                                              ; preds = %174
  br label %184

184:                                              ; preds = %183, %168
  br label %185

185:                                              ; preds = %184, %164, %129
  %186 = load i32, i32* %21, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %21, align 4
  br label %58

188:                                              ; preds = %182, %58
  %189 = load %struct.sway_binding*, %struct.sway_binding** %20, align 8
  ret %struct.sway_binding* %189
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
