; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_orders.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_orders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i64, %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i64, i64, i64, i64 }
%struct.TYPE_44__ = type { i64 }

@RDP_ORDER_STANDARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"order parsing failed\0A\00", align 1
@RDP_ORDER_SECONDARY = common dso_local global i32 0, align 4
@RDP_ORDER_CHANGE = common dso_local global i32 0, align 4
@RDP_ORDER_BOUNDS = common dso_local global i32 0, align 4
@RDP_ORDER_LASTBOUNDS = common dso_local global i32 0, align 4
@RDP_ORDER_DELTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"order %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_orders(%struct.TYPE_46__* %0, %struct.TYPE_44__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_46__*, align 8
  %5 = alloca %struct.TYPE_44__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_45__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %4, align 8
  store %struct.TYPE_44__* %1, %struct.TYPE_44__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %14, i32 0, i32 0
  store %struct.TYPE_45__* %15, %struct.TYPE_45__** %7, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %240, %3
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %243

20:                                               ; preds = %16
  %21 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @in_uint8(%struct.TYPE_44__* %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @RDP_ORDER_STANDARD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %243

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @RDP_ORDER_SECONDARY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %37 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %38 = call i32 @process_secondary_order(%struct.TYPE_46__* %36, %struct.TYPE_44__* %37)
  br label %240

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @RDP_ORDER_CHANGE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %46 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @in_uint8(%struct.TYPE_44__* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %56 [
    i32 128, label %54
    i32 129, label %54
    i32 135, label %55
    i32 136, label %55
    i32 137, label %55
    i32 133, label %55
    i32 138, label %55
  ]

54:                                               ; preds = %50, %50
  store i32 3, i32* %10, align 4
  br label %57

55:                                               ; preds = %50, %50, %50, %50, %50
  store i32 2, i32* %10, align 4
  br label %57

56:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %55, %54
  %58 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @rdp_in_present(%struct.TYPE_44__* %58, i32* %8, i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @RDP_ORDER_BOUNDS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @RDP_ORDER_LASTBOUNDS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %73 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %73, i32 0, i32 15
  %75 = call i32 @rdp_parse_bounds(%struct.TYPE_44__* %72, %struct.TYPE_47__* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %78 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %82, i32 0, i32 15
  %84 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %90, i32 0, i32 15
  %92 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %89, %93
  %95 = add nsw i64 %94, 1
  %96 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %100, i32 0, i32 15
  %102 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %99, %103
  %105 = add nsw i64 %104, 1
  %106 = call i32 @ui_set_clip(%struct.TYPE_46__* %77, i64 %81, i64 %85, i64 %95, i64 %105)
  br label %107

107:                                              ; preds = %76, %57
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @RDP_ORDER_DELTA, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %12, align 4
  %111 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %226 [
    i32 140, label %114
    i32 135, label %122
    i32 130, label %130
    i32 137, label %138
    i32 131, label %146
    i32 141, label %154
    i32 136, label %162
    i32 128, label %170
    i32 134, label %178
    i32 133, label %186
    i32 132, label %194
    i32 139, label %202
    i32 138, label %210
    i32 129, label %218
  ]

114:                                              ; preds = %107
  %115 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %116 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %117 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %117, i32 0, i32 14
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @process_destblt(%struct.TYPE_46__* %115, %struct.TYPE_44__* %116, i32* %118, i32 %119, i32 %120)
  br label %231

122:                                              ; preds = %107
  %123 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %124 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %125 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %125, i32 0, i32 13
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @process_patblt(%struct.TYPE_46__* %123, %struct.TYPE_44__* %124, i32* %126, i32 %127, i32 %128)
  br label %231

130:                                              ; preds = %107
  %131 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %132 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %133 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %133, i32 0, i32 12
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @process_screenblt(%struct.TYPE_46__* %131, %struct.TYPE_44__* %132, i32* %134, i32 %135, i32 %136)
  br label %231

138:                                              ; preds = %107
  %139 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %140 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %141 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %141, i32 0, i32 11
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @process_line(%struct.TYPE_46__* %139, %struct.TYPE_44__* %140, i32* %142, i32 %143, i32 %144)
  br label %231

146:                                              ; preds = %107
  %147 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %148 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %149 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %149, i32 0, i32 10
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @process_rect(%struct.TYPE_46__* %147, %struct.TYPE_44__* %148, i32* %150, i32 %151, i32 %152)
  br label %231

154:                                              ; preds = %107
  %155 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %156 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %157 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %157, i32 0, i32 9
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @process_desksave(%struct.TYPE_46__* %155, %struct.TYPE_44__* %156, i32* %158, i32 %159, i32 %160)
  br label %231

162:                                              ; preds = %107
  %163 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %164 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %165 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %165, i32 0, i32 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @process_memblt(%struct.TYPE_46__* %163, %struct.TYPE_44__* %164, i32* %166, i32 %167, i32 %168)
  br label %231

170:                                              ; preds = %107
  %171 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %172 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %173 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %173, i32 0, i32 7
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @process_triblt(%struct.TYPE_46__* %171, %struct.TYPE_44__* %172, i32* %174, i32 %175, i32 %176)
  br label %231

178:                                              ; preds = %107
  %179 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %180 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %181 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %181, i32 0, i32 6
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @process_polygon(%struct.TYPE_46__* %179, %struct.TYPE_44__* %180, i32* %182, i32 %183, i32 %184)
  br label %231

186:                                              ; preds = %107
  %187 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %188 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %189 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %189, i32 0, i32 5
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @process_polygon2(%struct.TYPE_46__* %187, %struct.TYPE_44__* %188, i32* %190, i32 %191, i32 %192)
  br label %231

194:                                              ; preds = %107
  %195 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %196 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %197 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %197, i32 0, i32 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @process_polyline(%struct.TYPE_46__* %195, %struct.TYPE_44__* %196, i32* %198, i32 %199, i32 %200)
  br label %231

202:                                              ; preds = %107
  %203 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %204 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %205 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %205, i32 0, i32 3
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @process_ellipse(%struct.TYPE_46__* %203, %struct.TYPE_44__* %204, i32* %206, i32 %207, i32 %208)
  br label %231

210:                                              ; preds = %107
  %211 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %212 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %213 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %213, i32 0, i32 2
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %12, align 4
  %217 = call i32 @process_ellipse2(%struct.TYPE_46__* %211, %struct.TYPE_44__* %212, i32* %214, i32 %215, i32 %216)
  br label %231

218:                                              ; preds = %107
  %219 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %220 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %221 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %221, i32 0, i32 1
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @process_text2(%struct.TYPE_46__* %219, %struct.TYPE_44__* %220, i32* %222, i32 %223, i32 %224)
  br label %231

226:                                              ; preds = %107
  %227 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @unimpl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %229)
  br label %243

231:                                              ; preds = %218, %210, %202, %194, %186, %178, %170, %162, %154, %146, %138, %130, %122, %114
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @RDP_ORDER_BOUNDS, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %238 = call i32 @ui_reset_clip(%struct.TYPE_46__* %237)
  br label %239

239:                                              ; preds = %236, %231
  br label %240

240:                                              ; preds = %239, %35
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %11, align 4
  br label %16

243:                                              ; preds = %226, %28, %16
  ret void
}

declare dso_local i32 @in_uint8(%struct.TYPE_44__*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @process_secondary_order(%struct.TYPE_46__*, %struct.TYPE_44__*) #1

declare dso_local i32 @rdp_in_present(%struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @rdp_parse_bounds(%struct.TYPE_44__*, %struct.TYPE_47__*) #1

declare dso_local i32 @ui_set_clip(%struct.TYPE_46__*, i64, i64, i64, i64) #1

declare dso_local i32 @process_destblt(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_patblt(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_screenblt(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_line(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_rect(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_desksave(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_memblt(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_triblt(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_polygon(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_polygon2(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_polyline(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_ellipse(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_ellipse2(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @process_text2(%struct.TYPE_46__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32 @ui_reset_clip(%struct.TYPE_46__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
