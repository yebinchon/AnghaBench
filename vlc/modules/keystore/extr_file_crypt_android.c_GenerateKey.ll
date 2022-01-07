; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_GenerateKey.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_GenerateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__**, i32*, i32, i32)*, i32* (%struct.TYPE_16__**, i32, i32*, i32*)*, i32* (%struct.TYPE_16__**, i8*)* }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@KeyGenParameterSpec = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@fields = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@KeyGenerator = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_16__**, i32, i32)* @GenerateKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GenerateKey(i32* %0, %struct.TYPE_16__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %19 = call i64 @InitJniGenKey(i32* %17, %struct.TYPE_16__** %18)
  %20 = load i64, i64* @VLC_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %144

23:                                               ; preds = %4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fields, i32 0, i32 0, i32 0), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fields, i32 0, i32 0, i32 1), align 4
  %27 = or i32 %25, %26
  %28 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_14__* @KeyGenParameterSpec to { i64, i64 }*), i32 0, i32 0), align 4
  %29 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_14__* @KeyGenParameterSpec to { i64, i64 }*), i32 0, i32 1), align 4
  %30 = call i32* @NEW_OBJECT(i64 %28, i64 %29, i32 %24, i32 %27)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @KeyGenParameterSpec, i32 0, i32 0, i32 3), align 4
  %33 = call i32* (i32*, i32, ...) @CALL_OBJ(i32* %31, i32 %32, i32 256)
  %34 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32* (%struct.TYPE_16__**, i8*)*, i32* (%struct.TYPE_16__**, i8*)** %36, align 8
  %38 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %39 = call i32* %37(%struct.TYPE_16__** %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %39, i32** %14, align 8
  %40 = call i64 (...) @CHECK_EXCEPTION()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %23
  br label %112

43:                                               ; preds = %23
  %44 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32* (%struct.TYPE_16__**, i32, i32*, i32*)*, i32* (%struct.TYPE_16__**, i32, i32*, i32*)** %46, align 8
  %48 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = call i32* %47(%struct.TYPE_16__** %48, i32 1, i32* %49, i32* null)
  store i32* %50, i32** %15, align 8
  %51 = call i64 (...) @CHECK_EXCEPTION()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %112

54:                                               ; preds = %43
  %55 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_16__**, i32*, i32, i32)*, i32 (%struct.TYPE_16__**, i32*, i32, i32)** %57, align 8
  %59 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fields, i32 0, i32 0, i32 4), align 4
  %62 = call i32 %58(%struct.TYPE_16__** %59, i32* %60, i32 0, i32 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @KeyGenParameterSpec, i32 0, i32 0, i32 2), align 4
  %65 = load i32*, i32** %15, align 8
  %66 = call i32* (i32*, i32, ...) @CALL_OBJ(i32* %63, i32 %64, i32* %65)
  %67 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_16__**, i32*, i32, i32)*, i32 (%struct.TYPE_16__**, i32*, i32, i32)** %69, align 8
  %71 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fields, i32 0, i32 0, i32 3), align 4
  %74 = call i32 %70(%struct.TYPE_16__** %71, i32* %72, i32 0, i32 %73)
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @KeyGenParameterSpec, i32 0, i32 0, i32 1), align 4
  %77 = load i32*, i32** %15, align 8
  %78 = call i32* (i32*, i32, ...) @CALL_OBJ(i32* %75, i32 %76, i32* %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @KeyGenParameterSpec, i32 0, i32 0, i32 0), align 4
  %81 = call i32* (i32*, i32, ...) @CALL_OBJ(i32* %79, i32 %80)
  store i32* %81, i32** %12, align 8
  %82 = call i64 (...) @CHECK_EXCEPTION()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %54
  br label %112

85:                                               ; preds = %54
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @KeyGenerator, i32 0, i32 2), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fields, i32 0, i32 0, i32 2), align 4
  %88 = load i32, i32* %9, align 4
  %89 = bitcast { i64, i32 }* %16 to i8*
  %90 = bitcast %struct.TYPE_19__* @KeyGenerator to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 12, i1 false)
  %91 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %92 = load i64, i64* %91, align 4
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32* @CALL_STATICOBJ(i64 %92, i32 %94, i32 %86, i32 %87, i32 %88)
  store i32* %95, i32** %13, align 8
  %96 = call i64 (...) @CHECK_EXCEPTION()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %112

99:                                               ; preds = %85
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @KeyGenerator, i32 0, i32 1), align 4
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @CALL_VOID(i32* %100, i32 %101, i32* %102)
  %104 = call i64 (...) @CHECK_EXCEPTION()
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %112

107:                                              ; preds = %99
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @KeyGenerator, i32 0, i32 0), align 4
  %110 = call i32* (i32*, i32, ...) @CALL_OBJ(i32* %108, i32 %109)
  store i32* %110, i32** %10, align 8
  %111 = call i64 (...) @CHECK_EXCEPTION()
  br label %112

112:                                              ; preds = %107, %106, %98, %84, %53, %42
  %113 = load i32*, i32** %11, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @DEL_LREF(i32* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32*, i32** %14, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @DEL_LREF(i32* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32*, i32** %15, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @DEL_LREF(i32* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32*, i32** %12, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32*, i32** %12, align 8
  %135 = call i32 @DEL_LREF(i32* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %13, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @DEL_LREF(i32* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32*, i32** %10, align 8
  store i32* %143, i32** %5, align 8
  br label %144

144:                                              ; preds = %142, %22
  %145 = load i32*, i32** %5, align 8
  ret i32* %145
}

declare dso_local i64 @InitJniGenKey(i32*, %struct.TYPE_16__**) #1

declare dso_local i32* @NEW_OBJECT(i64, i64, i32, i32) #1

declare dso_local i32* @CALL_OBJ(i32*, i32, ...) #1

declare dso_local i64 @CHECK_EXCEPTION(...) #1

declare dso_local i32* @CALL_STATICOBJ(i64, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CALL_VOID(i32*, i32, i32*) #1

declare dso_local i32 @DEL_LREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
