; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_AndroidEncrypt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_AndroidEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__**, i32*)*, i32 (%struct.TYPE_12__**, i32*, i32*, i32)*, i32* (%struct.TYPE_12__**, i32*, i32)* }

@Cipher = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@fields = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@s_jkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i32*, i64, i32**)* @AndroidEncrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AndroidEncrypt(i32* %0, i8* %1, i32* %2, i64 %3, i32** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_12__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32** %4, i32*** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call %struct.TYPE_12__** (...) @GET_ENV()
  store %struct.TYPE_12__** %20, %struct.TYPE_12__*** %12, align 8
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %22 = icmp eq %struct.TYPE_12__** %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %97

24:                                               ; preds = %5
  store i32* null, i32** %13, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Cipher, i32 0, i32 2), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fields, i32 0, i32 1), align 4
  %27 = bitcast { i64, i32 }* %14 to i8*
  %28 = bitcast %struct.TYPE_14__* @Cipher to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %30 = load i64, i64* %29, align 4
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @CALL_STATICOBJ(i64 %30, i32 %32, i32 %25, i32 %26)
  store i32* %33, i32** %13, align 8
  %34 = call i64 (...) @CHECK_EXCEPTION()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i64 0, i64* %6, align 8
  br label %97

37:                                               ; preds = %24
  store i64 0, i64* %15, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Cipher, i32 0, i32 1), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fields, i32 0, i32 0, i32 0), align 4
  %41 = load i32, i32* @s_jkey, align 4
  %42 = call i32 @CALL_VOID(i32* %38, i32 %39, i32 %40, i32 %41, i32* null)
  %43 = call i64 (...) @CHECK_EXCEPTION()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %93

46:                                               ; preds = %37
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Cipher, i32 0, i32 0), align 4
  %49 = call i32 @CALL_OBJ(i32* %47, i32 %48)
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %16, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %93

55:                                               ; preds = %46
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64 (%struct.TYPE_12__**, i32*)*, i64 (%struct.TYPE_12__**, i32*)** %58, align 8
  %60 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = call i64 %59(%struct.TYPE_12__** %60, i32* %61)
  store i64 %62, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %93

66:                                               ; preds = %55
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i32* (%struct.TYPE_12__**, i32*, i32)*, i32* (%struct.TYPE_12__**, i32*, i32)** %69, align 8
  %71 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = call i32* %70(%struct.TYPE_12__** %71, i32* %72, i32 0)
  store i32* %73, i32** %18, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load i32**, i32*** %11, align 8
  %82 = call i64 @Process(i32* %74, %struct.TYPE_12__** %75, i32* %76, i32* %77, i64 %78, i32* %79, i64 %80, i32** %81)
  store i64 %82, i64* %15, align 8
  %83 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32 (%struct.TYPE_12__**, i32*, i32*, i32)*, i32 (%struct.TYPE_12__**, i32*, i32*, i32)** %85, align 8
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = call i32 %86(%struct.TYPE_12__** %87, i32* %88, i32* %89, i32 0)
  %91 = load i32*, i32** %16, align 8
  %92 = call i32 @DEL_LREF(i32* %91)
  br label %93

93:                                               ; preds = %66, %65, %54, %45
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @DEL_LREF(i32* %94)
  %96 = load i64, i64* %15, align 8
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %93, %36, %23
  %98 = load i64, i64* %6, align 8
  ret i64 %98
}

declare dso_local %struct.TYPE_12__** @GET_ENV(...) #1

declare dso_local i32* @CALL_STATICOBJ(i64, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @CHECK_EXCEPTION(...) #1

declare dso_local i32 @CALL_VOID(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @CALL_OBJ(i32*, i32) #1

declare dso_local i64 @Process(i32*, %struct.TYPE_12__**, i32*, i32*, i64, i32*, i64, i32**) #1

declare dso_local i32 @DEL_LREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
