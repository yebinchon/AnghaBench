; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_http_parser.c_http_parse_host.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_http_parser.c_http_parse_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@UF_HOST = common dso_local global i64 0, align 8
@s_http_host_dead = common dso_local global i32 0, align 4
@UF_PORT = common dso_local global i64 0, align 8
@UF_USERINFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.http_parser_url*, i32)* @http_parse_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_parse_host(i8* %0, %struct.http_parser_url* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.http_parser_url*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.http_parser_url* %1, %struct.http_parser_url** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %13 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* @UF_HOST, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %20 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @UF_HOST, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %18, %25
  store i64 %26, i64* %10, align 8
  %27 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %28 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @UF_HOST, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = and i32 %29, %32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %36 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* @UF_HOST, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 128, i32 134
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %47 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* @UF_HOST, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8, i8* %45, i64 %52
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %205, %3
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = icmp ult i8* %55, %58
  br i1 %59, label %60, label %208

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @http_parse_host_char(i32 %61, i8 signext %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @s_http_host_dead, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %213

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  switch i32 %70, label %202 [
    i32 137, label %71
    i32 133, label %95
    i32 130, label %119
    i32 131, label %119
    i32 136, label %128
    i32 129, label %165
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 137
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %81 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* @UF_HOST, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 %79, i64* %85, align 8
  br label %86

86:                                               ; preds = %74, %71
  %87 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %88 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i64, i64* @UF_HOST, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  br label %203

95:                                               ; preds = %69
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 133
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %105 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i64, i64* @UF_HOST, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i64 %103, i64* %109, align 8
  br label %110

110:                                              ; preds = %98, %95
  %111 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %112 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i64, i64* @UF_HOST, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %116, align 8
  br label %203

119:                                              ; preds = %69, %69
  %120 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %121 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i64, i64* @UF_HOST, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %125, align 8
  br label %203

128:                                              ; preds = %69
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 136
  br i1 %130, label %131, label %156

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %138 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i64, i64* @UF_PORT, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store i64 %136, i64* %142, align 8
  %143 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %144 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i64, i64* @UF_PORT, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load i64, i64* @UF_PORT, align 8
  %150 = trunc i64 %149 to i32
  %151 = shl i32 1, %150
  %152 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %153 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %131, %128
  %157 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %158 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %157, i32 0, i32 1
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i64, i64* @UF_PORT, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %162, align 8
  br label %203

165:                                              ; preds = %69
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 129
  br i1 %167, label %168, label %193

168:                                              ; preds = %165
  %169 = load i8*, i8** %9, align 8
  %170 = load i8*, i8** %5, align 8
  %171 = ptrtoint i8* %169 to i64
  %172 = ptrtoint i8* %170 to i64
  %173 = sub i64 %171, %172
  %174 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %175 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = load i64, i64* @UF_USERINFO, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store i64 %173, i64* %179, align 8
  %180 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %181 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %180, i32 0, i32 1
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i64, i64* @UF_USERINFO, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  %186 = load i64, i64* @UF_USERINFO, align 8
  %187 = trunc i64 %186 to i32
  %188 = shl i32 1, %187
  %189 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %190 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %168, %165
  %194 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %195 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = load i64, i64* @UF_USERINFO, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %199, align 8
  br label %203

202:                                              ; preds = %69
  br label %203

203:                                              ; preds = %202, %193, %156, %119, %110, %86
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %203
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %9, align 8
  br label %54

208:                                              ; preds = %54
  %209 = load i32, i32* %8, align 4
  switch i32 %209, label %211 [
    i32 134, label %210
    i32 132, label %210
    i32 133, label %210
    i32 130, label %210
    i32 131, label %210
    i32 135, label %210
    i32 129, label %210
    i32 128, label %210
  ]

210:                                              ; preds = %208, %208, %208, %208, %208, %208, %208, %208
  store i32 1, i32* %4, align 4
  br label %213

211:                                              ; preds = %208
  br label %212

212:                                              ; preds = %211
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %212, %210, %68
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @http_parse_host_char(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
