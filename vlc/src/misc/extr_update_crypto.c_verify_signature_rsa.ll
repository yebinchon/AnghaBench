; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_verify_signature_rsa.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_verify_signature_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"(data(flags raw)(value %m))\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"(public-key(rsa(n %m)(e %m)))\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"(sig-val(rsa(s%m)))\00", align 1
@GCRYMPI_FMT_USG = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*)* @verify_signature_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_signature_rsa(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %7, align 4
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %16, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @mpi_len(i32* %28)
  store i32 %29, i32* %19, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @mpi_len(i32* %34)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %19, align 4
  %44 = call i64 @gcry_mpi_scan(i32** %12, i32 %36, i32* %42, i32 %43, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %3
  %47 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %20, align 4
  %55 = call i64 @gcry_mpi_scan(i32** %13, i32 %47, i32* %53, i32 %54, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %46
  %58 = load i8*, i8** %9, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i64 (i32**, i64*, i8*, i32*, ...) @gcry_sexp_build(i32** %16, i64* %11, i8* %58, i32* %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %46, %3
  br label %107

64:                                               ; preds = %57
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %21, align 8
  %70 = load i32*, i32** %21, align 8
  %71 = call i32 @mpi_len(i32* %70)
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %73 = load i32*, i32** %21, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %22, align 4
  %76 = call i64 @gcry_mpi_scan(i32** %14, i32 %72, i32* %74, i32 %75, i32* null)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %64
  %79 = load i8*, i8** %10, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i64 (i32**, i64*, i8*, i32*, ...) @gcry_sexp_build(i32** %18, i64* %11, i8* %79, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %64
  br label %107

84:                                               ; preds = %78
  %85 = load i32, i32* %19, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @rsa_pkcs1_encode_sig(i32** %15, i32 %85, i32* %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %84
  %93 = load i8*, i8** %8, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call i64 (i32**, i64*, i8*, i32*, ...) @gcry_sexp_build(i32** %17, i64* %11, i8* %93, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %84
  br label %107

98:                                               ; preds = %92
  %99 = load i32*, i32** %18, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i64 @gcry_pk_verify(i32* %99, i32* %100, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %105, %104, %97, %83, %63
  %108 = load i32*, i32** %12, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @gcry_mpi_release(i32* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32*, i32** %13, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @gcry_mpi_release(i32* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32*, i32** %14, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @gcry_mpi_release(i32* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32*, i32** %15, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 @gcry_mpi_release(i32* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32*, i32** %16, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** %16, align 8
  %136 = call i32 @gcry_sexp_release(i32* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32*, i32** %18, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %18, align 8
  %142 = call i32 @gcry_sexp_release(i32* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32*, i32** %17, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %17, align 8
  %148 = call i32 @gcry_sexp_release(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @mpi_len(i32*) #1

declare dso_local i64 @gcry_mpi_scan(i32**, i32, i32*, i32, i32*) #1

declare dso_local i64 @gcry_sexp_build(i32**, i64*, i8*, i32*, ...) #1

declare dso_local i64 @rsa_pkcs1_encode_sig(i32**, i32, i32*, i32) #1

declare dso_local i64 @gcry_pk_verify(i32*, i32*, i32*) #1

declare dso_local i32 @gcry_mpi_release(i32*) #1

declare dso_local i32 @gcry_sexp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
