; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_verify_signature_dsa.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_verify_signature_dsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"(data(flags raw)(value %m))\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"(public-key(dsa(p %m)(q %m)(g %m)(y %m)))\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"(sig-val(dsa(r %m )(s %m )))\00", align 1
@GCRYMPI_FMT_USG = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*)* @verify_signature_dsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_signature_dsa(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %7, align 4
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %19, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @mpi_len(i32* %36)
  store i32 %37, i32* %22, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @mpi_len(i32* %42)
  store i32 %43, i32* %23, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @mpi_len(i32* %48)
  store i32 %49, i32* %24, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @mpi_len(i32* %54)
  store i32 %55, i32* %25, align 4
  %56 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %22, align 4
  %64 = call i64 @gcry_mpi_scan(i32** %12, i32 %56, i32* %62, i32 %63, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %107, label %66

66:                                               ; preds = %3
  %67 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %23, align 4
  %75 = call i64 @gcry_mpi_scan(i32** %13, i32 %67, i32* %73, i32 %74, i32* null)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %107, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %24, align 4
  %86 = call i64 @gcry_mpi_scan(i32** %14, i32 %78, i32* %84, i32 %85, i32* null)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %25, align 4
  %97 = call i64 @gcry_mpi_scan(i32** %15, i32 %89, i32* %95, i32 %96, i32* null)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %88
  %100 = load i8*, i8** %9, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = call i64 (i32**, i64*, i8*, i32*, ...) @gcry_sexp_build(i32** %19, i64* %11, i8* %100, i32* %101, i32* %102, i32* %103, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99, %88, %77, %66, %3
  br label %174

108:                                              ; preds = %99
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %26, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %27, align 8
  %119 = load i32*, i32** %26, align 8
  %120 = call i32 @mpi_len(i32* %119)
  store i32 %120, i32* %28, align 4
  %121 = load i32*, i32** %27, align 8
  %122 = call i32 @mpi_len(i32* %121)
  store i32 %122, i32* %29, align 4
  %123 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %124 = load i32*, i32** %26, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %28, align 4
  %127 = call i64 @gcry_mpi_scan(i32** %16, i32 %123, i32* %125, i32 %126, i32* null)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %142, label %129

129:                                              ; preds = %108
  %130 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %131 = load i32*, i32** %27, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %29, align 4
  %134 = call i64 @gcry_mpi_scan(i32** %17, i32 %130, i32* %132, i32 %133, i32* null)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %129
  %137 = load i8*, i8** %10, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = call i64 (i32**, i64*, i8*, i32*, ...) @gcry_sexp_build(i32** %21, i64* %11, i8* %137, i32* %138, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136, %129, %108
  br label %174

143:                                              ; preds = %136
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @gcry_md_get_algo_dlen(i32 %146)
  store i32 %147, i32* %30, align 4
  %148 = load i32, i32* %30, align 4
  %149 = load i32, i32* %23, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load i32, i32* %23, align 4
  store i32 %152, i32* %30, align 4
  br label %153

153:                                              ; preds = %151, %143
  %154 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %30, align 4
  %157 = call i64 @gcry_mpi_scan(i32** %18, i32 %154, i32* %155, i32 %156, i32* null)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = load i8*, i8** %8, align 8
  %161 = load i32*, i32** %18, align 8
  %162 = call i64 (i32**, i64*, i8*, i32*, ...) @gcry_sexp_build(i32** %20, i64* %11, i8* %160, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159, %153
  br label %174

165:                                              ; preds = %159
  %166 = load i32*, i32** %21, align 8
  %167 = load i32*, i32** %20, align 8
  %168 = load i32*, i32** %19, align 8
  %169 = call i64 @gcry_pk_verify(i32* %166, i32* %167, i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %172, %171, %164, %142, %107
  %175 = load i32*, i32** %12, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32*, i32** %12, align 8
  %179 = call i32 @gcry_mpi_release(i32* %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32*, i32** %13, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32*, i32** %13, align 8
  %185 = call i32 @gcry_mpi_release(i32* %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i32*, i32** %14, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32*, i32** %14, align 8
  %191 = call i32 @gcry_mpi_release(i32* %190)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32*, i32** %15, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32*, i32** %15, align 8
  %197 = call i32 @gcry_mpi_release(i32* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32*, i32** %16, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32*, i32** %16, align 8
  %203 = call i32 @gcry_mpi_release(i32* %202)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32*, i32** %17, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32*, i32** %17, align 8
  %209 = call i32 @gcry_mpi_release(i32* %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32*, i32** %18, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32*, i32** %18, align 8
  %215 = call i32 @gcry_mpi_release(i32* %214)
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i32*, i32** %19, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32*, i32** %19, align 8
  %221 = call i32 @gcry_sexp_release(i32* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32*, i32** %21, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32*, i32** %21, align 8
  %227 = call i32 @gcry_sexp_release(i32* %226)
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i32*, i32** %20, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32*, i32** %20, align 8
  %233 = call i32 @gcry_sexp_release(i32* %232)
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i32, i32* %7, align 4
  ret i32 %235
}

declare dso_local i32 @mpi_len(i32*) #1

declare dso_local i64 @gcry_mpi_scan(i32**, i32, i32*, i32, i32*) #1

declare dso_local i64 @gcry_sexp_build(i32**, i64*, i8*, i32*, ...) #1

declare dso_local i32 @gcry_md_get_algo_dlen(i32) #1

declare dso_local i64 @gcry_pk_verify(i32*, i32*, i32*) #1

declare dso_local i32 @gcry_mpi_release(i32*) #1

declare dso_local i32 @gcry_sexp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
