; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_aio_write_chain.c_ngx_aio_write_chain.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_aio_write_chain.c_ngx_aio_write_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@NGX_MAX_SIZE_T_VALUE = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"aio_write: %z\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"aio_write sent: %O\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ngx_aio_write_chain(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %21 = load i64, i64* @ngx_pagesize, align 8
  %22 = sub nsw i64 %20, %21
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %3
  %25 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %26 = load i64, i64* @ngx_pagesize, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24, %18
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %15, align 8
  br label %30

30:                                               ; preds = %226, %45, %28
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %227

33:                                               ; preds = %30
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %38, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %15, align 8
  br label %30

49:                                               ; preds = %33
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %4, align 8
  br label %229

58:                                               ; preds = %49
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  store i32* %64, i32** %9, align 8
  store i64 0, i64* %12, align 8
  br label %65

65:                                               ; preds = %113, %88, %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %67 = icmp ne %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %69, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp slt i64 %77, %78
  br label %80

80:                                               ; preds = %76, %68, %65
  %81 = phi i1 [ false, %68 ], [ false, %65 ], [ %79, %76 ]
  br i1 %81, label %82, label %130

82:                                               ; preds = %80
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = call i64 @ngx_buf_special(%struct.TYPE_13__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %65

89:                                               ; preds = %82
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = ptrtoint i32* %94 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %14, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* %7, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %89
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %10, align 8
  %112 = sub nsw i64 %110, %111
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %109, %89
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %12, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %9, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %10, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %10, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %15, align 8
  br label %65

130:                                              ; preds = %80
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i64 @ngx_aio_write(%struct.TYPE_11__* %131, i32* %132, i64 %133)
  store i64 %134, i64* %13, align 8
  %135 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %13, align 8
  %140 = call i32 @ngx_log_debug1(i32 %135, i32 %138, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %139)
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* @NGX_ERROR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %130
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_12__* %145, %struct.TYPE_12__** %4, align 8
  br label %229

146:                                              ; preds = %130
  %147 = load i64, i64* %13, align 8
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* %11, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %11, align 8
  %153 = load i64, i64* %13, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %153
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %149, %146
  %159 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @ngx_log_debug1(i32 %159, i32 %162, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %165)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %15, align 8
  br label %168

168:                                              ; preds = %222, %158
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %170 = icmp ne %struct.TYPE_12__* %169, null
  br i1 %170, label %171, label %226

171:                                              ; preds = %168
  %172 = load i64, i64* %11, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = ptrtoint i32* %177 to i64
  %184 = ptrtoint i32* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 4
  %187 = icmp sge i64 %172, %186
  br i1 %187, label %188, label %214

188:                                              ; preds = %171
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = ptrtoint i32* %193 to i64
  %200 = ptrtoint i32* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 4
  %203 = load i64, i64* %11, align 8
  %204 = sub nsw i64 %203, %202
  store i64 %204, i64* %11, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  store i32* %209, i32** %213, align 8
  br label %222

214:                                              ; preds = %171
  %215 = load i64, i64* %11, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 %215
  store i32* %221, i32** %219, align 8
  br label %226

222:                                              ; preds = %188
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  store %struct.TYPE_12__* %225, %struct.TYPE_12__** %15, align 8
  br label %168

226:                                              ; preds = %214, %168
  br label %30

227:                                              ; preds = %30
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %228, %struct.TYPE_12__** %4, align 8
  br label %229

229:                                              ; preds = %227, %144, %56
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %230
}

declare dso_local i64 @ngx_buf_special(%struct.TYPE_13__*) #1

declare dso_local i64 @ngx_aio_write(%struct.TYPE_11__*, i32*, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
