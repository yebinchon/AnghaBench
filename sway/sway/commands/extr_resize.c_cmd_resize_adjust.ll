; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_cmd_resize_adjust.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_cmd_resize_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { i32 }
%struct.cmd_results = type { i32 }
%struct.resize_amount = type { i64, i32 }

@__const.cmd_resize_adjust.usage = private unnamed_addr constant [81 x i8] c"Expected 'resize grow|shrink <direction> [<amount> px|ppt [or <amount> px|ppt]]'\00", align 16
@WLR_EDGE_NONE = common dso_local global i64 0, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@RESIZE_UNIT_INVALID = common dso_local global i64 0, align 8
@RESIZE_UNIT_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"or\00", align 1
@config = common dso_local global %struct.TYPE_4__* null, align 8
@RESIZE_UNIT_PX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Floating containers cannot use ppt measurements\00", align 1
@RESIZE_UNIT_PPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**, i32)* @cmd_resize_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @cmd_resize_adjust(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca [81 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca %struct.resize_amount, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.resize_amount, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sway_container*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast [81 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 getelementptr inbounds ([81 x i8], [81 x i8]* @__const.cmd_resize_adjust.usage, i32 0, i32 0), i64 81, i1 false)
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @parse_resize_axis(i8* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @WLR_EDGE_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @CMD_INVALID, align 4
  %24 = getelementptr inbounds [81 x i8], [81 x i8]* %8, i64 0, i64 0
  %25 = call %struct.cmd_results* @cmd_results_new(i32 %23, i8* %24)
  store %struct.cmd_results* %25, %struct.cmd_results** %4, align 8
  br label %188

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i8**, i8*** %6, align 8
  %36 = call i32 @parse_resize_amount(i32 %34, i8** %35, %struct.resize_amount* %10)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i8**, i8*** %6, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8** %43, i8*** %6, align 8
  %44 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RESIZE_UNIT_INVALID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load i32, i32* @CMD_INVALID, align 4
  %50 = getelementptr inbounds [81 x i8], [81 x i8]* %8, i64 0, i64 0
  %51 = call %struct.cmd_results* @cmd_results_new(i32 %49, i8* %50)
  store %struct.cmd_results* %51, %struct.cmd_results** %4, align 8
  br label %188

52:                                               ; preds = %33
  br label %57

53:                                               ; preds = %26
  %54 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 1
  store i32 10, i32* %54, align 8
  %55 = load i64, i64* @RESIZE_UNIT_DEFAULT, align 8
  %56 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @CMD_INVALID, align 4
  %67 = getelementptr inbounds [81 x i8], [81 x i8]* %8, i64 0, i64 0
  %68 = call %struct.cmd_results* @cmd_results_new(i32 %66, i8* %67)
  store %struct.cmd_results* %68, %struct.cmd_results** %4, align 8
  br label %188

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %5, align 4
  %72 = load i8**, i8*** %6, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %73, i8*** %6, align 8
  br label %74

74:                                               ; preds = %69, %57
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = load i8**, i8*** %6, align 8
  %80 = call i32 @parse_resize_amount(i32 %78, i8** %79, %struct.resize_amount* %12)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @CMD_INVALID, align 4
  %86 = getelementptr inbounds [81 x i8], [81 x i8]* %8, i64 0, i64 0
  %87 = call %struct.cmd_results* @cmd_results_new(i32 %85, i8* %86)
  store %struct.cmd_results* %87, %struct.cmd_results** %4, align 8
  br label %188

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %12, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @RESIZE_UNIT_INVALID, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @CMD_INVALID, align 4
  %95 = getelementptr inbounds [81 x i8], [81 x i8]* %8, i64 0, i64 0
  %96 = call %struct.cmd_results* @cmd_results_new(i32 %94, i8* %95)
  store %struct.cmd_results* %96, %struct.cmd_results** %4, align 8
  br label %188

97:                                               ; preds = %88
  br label %102

98:                                               ; preds = %74
  %99 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %12, i32 0, i32 1
  store i32 0, i32* %99, align 8
  %100 = load i64, i64* @RESIZE_UNIT_INVALID, align 8
  %101 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %12, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = load i32, i32* %7, align 4
  %104 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %105, %103
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %7, align 4
  %108 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %12, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %109, %107
  store i32 %110, i32* %108, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load %struct.sway_container*, %struct.sway_container** %113, align 8
  store %struct.sway_container* %114, %struct.sway_container** %14, align 8
  %115 = load %struct.sway_container*, %struct.sway_container** %14, align 8
  %116 = call i64 @container_is_floating(%struct.sway_container* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %153

118:                                              ; preds = %102
  %119 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @RESIZE_UNIT_PX, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i64, i64* %9, align 8
  %125 = call %struct.cmd_results* @resize_adjust_floating(i64 %124, %struct.resize_amount* %10)
  store %struct.cmd_results* %125, %struct.cmd_results** %4, align 8
  br label %188

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %12, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RESIZE_UNIT_PX, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i64, i64* %9, align 8
  %133 = call %struct.cmd_results* @resize_adjust_floating(i64 %132, %struct.resize_amount* %12)
  store %struct.cmd_results* %133, %struct.cmd_results** %4, align 8
  br label %188

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RESIZE_UNIT_DEFAULT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i64, i64* %9, align 8
  %141 = call %struct.cmd_results* @resize_adjust_floating(i64 %140, %struct.resize_amount* %10)
  store %struct.cmd_results* %141, %struct.cmd_results** %4, align 8
  br label %188

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %12, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RESIZE_UNIT_DEFAULT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i64, i64* %9, align 8
  %149 = call %struct.cmd_results* @resize_adjust_floating(i64 %148, %struct.resize_amount* %12)
  store %struct.cmd_results* %149, %struct.cmd_results** %4, align 8
  br label %188

150:                                              ; preds = %142
  %151 = load i32, i32* @CMD_INVALID, align 4
  %152 = call %struct.cmd_results* @cmd_results_new(i32 %151, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %152, %struct.cmd_results** %4, align 8
  br label %188

153:                                              ; preds = %102
  %154 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @RESIZE_UNIT_PPT, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i64, i64* %9, align 8
  %160 = call %struct.cmd_results* @resize_adjust_tiled(i64 %159, %struct.resize_amount* %10)
  store %struct.cmd_results* %160, %struct.cmd_results** %4, align 8
  br label %188

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %12, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @RESIZE_UNIT_PPT, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i64, i64* %9, align 8
  %168 = call %struct.cmd_results* @resize_adjust_tiled(i64 %167, %struct.resize_amount* %12)
  store %struct.cmd_results* %168, %struct.cmd_results** %4, align 8
  br label %188

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @RESIZE_UNIT_DEFAULT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i64, i64* %9, align 8
  %176 = call %struct.cmd_results* @resize_adjust_tiled(i64 %175, %struct.resize_amount* %10)
  store %struct.cmd_results* %176, %struct.cmd_results** %4, align 8
  br label %188

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %12, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @RESIZE_UNIT_DEFAULT, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i64, i64* %9, align 8
  %184 = call %struct.cmd_results* @resize_adjust_tiled(i64 %183, %struct.resize_amount* %12)
  store %struct.cmd_results* %184, %struct.cmd_results** %4, align 8
  br label %188

185:                                              ; preds = %177
  %186 = load i64, i64* %9, align 8
  %187 = call %struct.cmd_results* @resize_adjust_tiled(i64 %186, %struct.resize_amount* %10)
  store %struct.cmd_results* %187, %struct.cmd_results** %4, align 8
  br label %188

188:                                              ; preds = %185, %182, %174, %166, %158, %150, %147, %139, %131, %123, %93, %84, %65, %48, %22
  %189 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @parse_resize_axis(i8*) #2

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #2

declare dso_local i32 @parse_resize_amount(i32, i8**, %struct.resize_amount*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @container_is_floating(%struct.sway_container*) #2

declare dso_local %struct.cmd_results* @resize_adjust_floating(i64, %struct.resize_amount*) #2

declare dso_local %struct.cmd_results* @resize_adjust_tiled(i64, %struct.resize_amount*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
