; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_rewrite.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i32 }

@ngx_http_upstream_session_sticky_module = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)* @ngx_http_session_sticky_rewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_session_sticky_rewrite(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %15 = call %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_18__* %13, i32 %14)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %11, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = call i8* @ngx_strlcasestrn(i8* %19, i8* %28, i8* %34, i32 %41)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %46, i32* %3, align 4
  br label %208

47:                                               ; preds = %2
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %7, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %10, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  store i8* %61, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %99, %47
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ult i8* %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  switch i32 %67, label %98 [
    i32 0, label %68
    i32 1, label %82
    i32 2, label %91
  ]

68:                                               ; preds = %66
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 61
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 1, i32* %12, align 4
  br label %81

74:                                               ; preds = %68
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 59
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %115

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %73
  br label %99

82:                                               ; preds = %66
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @is_space(i8 signext %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  store i32 2, i32* %12, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %6, align 8
  br label %90

90:                                               ; preds = %87, %82
  br label %99

91:                                               ; preds = %66
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 59
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %115

97:                                               ; preds = %91
  br label %99

98:                                               ; preds = %66
  br label %99

99:                                               ; preds = %98, %97, %90, %81
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  br label %62

102:                                              ; preds = %62
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = icmp uge i8* %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %106
  br label %115

113:                                              ; preds = %109, %102
  %114 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %114, i32* %3, align 4
  br label %208

115:                                              ; preds = %112, %96, %79
  %116 = load i8*, i8** %6, align 8
  store i8* %116, i8** %8, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sub nsw i64 %120, %125
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %126, %133
  %135 = add nsw i64 %134, 1
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %135, %140
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  store i64 %141, i64* %144, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i8* @ngx_pnalloc(i32 %147, i32 %152)
  store i8* %153, i8** %6, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %115
  %157 = load i32, i32* @NGX_ERROR, align 4
  store i32 %157, i32* %3, align 4
  br label %208

158:                                              ; preds = %115
  %159 = load i8*, i8** %6, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = call i8* @ngx_cpymem(i8* %163, i8* %164, i32 %170)
  store i8* %171, i8** %6, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i8* @ngx_cpymem(i8* %172, i8* %178, i32 %184)
  store i8* %185, i8** %6, align 8
  %186 = load i8*, i8** %6, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %6, align 8
  store i8 61, i8* %186, align 1
  %188 = load i8*, i8** %6, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i8* @ngx_cpymem(i8* %188, i8* %192, i32 %196)
  store i8* %197, i8** %6, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = load i8*, i8** %8, align 8
  %202 = ptrtoint i8* %200 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = call i8* @ngx_cpymem(i8* %198, i8* %199, i32 %205)
  store i8* %206, i8** %6, align 8
  %207 = load i32, i32* @NGX_OK, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %158, %156, %113, %45
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @ngx_strlcasestrn(i8*, i8*, i8*, i32) #1

declare dso_local i32 @is_space(i8 signext) #1

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i8* @ngx_cpymem(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
