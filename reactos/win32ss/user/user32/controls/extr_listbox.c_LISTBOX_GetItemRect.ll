; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_GetItemRect.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_GetItemRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@ERROR_INVALID_INDEX = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i32 0, align 4
@LBS_MULTICOLUMN = common dso_local global i32 0, align 4
@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"item %d, rect %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, %struct.TYPE_10__*)* @LISTBOX_GetItemRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_GetItemRect(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = call i32 @memset(%struct.TYPE_10__* %19, i32 0, i32 32)
  %21 = load i32, i32* @ERROR_INVALID_INDEX, align 4
  %22 = call i32 @SetLastError(i32 %21)
  %23 = load i32, i32* @LB_ERR, align 4
  store i32 %23, i32* %4, align 4
  br label %250

24:                                               ; preds = %12, %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @SetRect(%struct.TYPE_10__* %25, i32 0, i32 0, i64 %28, i64 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %93

39:                                               ; preds = %24
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = udiv i64 %40, %43
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = udiv i64 %47, %50
  %52 = sub i64 %44, %51
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %53, %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %64, %67
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = urem i64 %71, %74
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = mul i64 %75, %78
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %86, %89
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  br label %217

93:                                               ; preds = %24
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %186

100:                                              ; preds = %93
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load i64, i64* %6, align 8
  %109 = icmp uge i64 %108, 0
  br i1 %109, label %110, label %185

110:                                              ; preds = %100
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %185

116:                                              ; preds = %110
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ult i64 %117, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %116
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %125, 1
  store i64 %126, i64* %9, align 8
  br label %127

127:                                              ; preds = %143, %122
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp uge i64 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 9
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %131
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, -1
  store i64 %145, i64* %9, align 8
  br label %127

146:                                              ; preds = %127
  br label %171

147:                                              ; preds = %116
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %9, align 8
  br label %151

151:                                              ; preds = %167, %147
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %6, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %151
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 9
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, %162
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %155
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %9, align 8
  br label %151

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %146
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 9
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i64, i64* %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %174, %181
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 3
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %171, %110, %100
  br label %216

186:                                              ; preds = %93
  %187 = load i64, i64* %6, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = sub i64 %187, %190
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = mul i64 %191, %194
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 7
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %202, %205
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  store i64 %206, i64* %208, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 8
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, %211
  store i64 %215, i64* %213, align 8
  br label %216

216:                                              ; preds = %186, %185
  br label %217

217:                                              ; preds = %216, %39
  %218 = load i64, i64* %6, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %220 = call i32 @wine_dbgstr_rect(%struct.TYPE_10__* %219)
  %221 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %218, i32 %220)
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp slt i64 %224, %227
  br i1 %228, label %229, label %247

229:                                              ; preds = %217
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %229
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp slt i64 %237, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %234
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp sgt i64 %245, 0
  br label %247

247:                                              ; preds = %242, %234, %229, %217
  %248 = phi i1 [ false, %234 ], [ false, %229 ], [ false, %217 ], [ %246, %242 ]
  %249 = zext i1 %248 to i32
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %247, %18
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_10__*, i32, i32, i64, i64) #1

declare dso_local i32 @TRACE(i8*, i64, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
