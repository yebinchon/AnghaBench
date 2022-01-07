; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_AndroidDecrypt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_AndroidDecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__**, i32*, i32, i32, i32*)*, i32* (%struct.TYPE_11__**, i32)* }

@Cipher = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@fields = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@IvParameterSpec = common dso_local global i32 0, align 4
@s_jkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i32*, i64, i32**)* @AndroidDecrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AndroidDecrypt(i32* %0, i8* %1, i32* %2, i64 %3, i32** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_11__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32** %4, i32*** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call %struct.TYPE_11__** (...) @GET_ENV()
  store %struct.TYPE_11__** %19, %struct.TYPE_11__*** %12, align 8
  %20 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %21 = icmp eq %struct.TYPE_11__** %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %117

23:                                               ; preds = %5
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Cipher, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fields, i32 0, i32 1), align 4
  %26 = load i64, i64* bitcast (%struct.TYPE_13__* @Cipher to i64*), align 4
  %27 = call i32* @CALL_STATICOBJ(i64 %26, i32 %24, i32 %25)
  store i32* %27, i32** %15, align 8
  %28 = call i64 (...) @CHECK_EXCEPTION()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i64 0, i64* %6, align 8
  br label %117

31:                                               ; preds = %23
  store i64 0, i64* %16, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %101

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @memcpy(i32* %17, i32* %36, i32 4)
  %38 = load i32, i32* %17, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 4, %43
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %35
  br label %101

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32* (%struct.TYPE_11__**, i32)*, i32* (%struct.TYPE_11__**, i32)** %50, align 8
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i32* %51(%struct.TYPE_11__** %52, i32 %53)
  store i32* %54, i32** %13, align 8
  %55 = call i64 (...) @CHECK_EXCEPTION()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %101

58:                                               ; preds = %47
  %59 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_11__**, i32*, i32, i32, i32*)*, i32 (%struct.TYPE_11__**, i32*, i32, i32, i32*)** %61, align 8
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = call i32 %62(%struct.TYPE_11__** %63, i32* %64, i32 0, i32 %65, i32* %67)
  %69 = load i32, i32* @IvParameterSpec, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = call i32* @NEW_OBJECT(i32 %69, i32* %70)
  store i32* %71, i32** %14, align 8
  %72 = call i64 (...) @CHECK_EXCEPTION()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %101

75:                                               ; preds = %58
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Cipher, i32 0, i32 0), align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fields, i32 0, i32 0, i32 0), align 4
  %79 = load i32, i32* @s_jkey, align 4
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @CALL_VOID(i32* %76, i32 %77, i32 %78, i32 %79, i32* %80)
  %82 = call i64 (...) @CHECK_EXCEPTION()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %101

85:                                               ; preds = %75
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i64, i64* %10, align 8
  %95 = sub i64 %94, 4
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 %95, %97
  %99 = load i32**, i32*** %11, align 8
  %100 = call i64 @Process(i32* %86, %struct.TYPE_11__** %87, i32* %88, i32* %93, i64 %98, i32* null, i32 0, i32** %99)
  store i64 %100, i64* %16, align 8
  br label %101

101:                                              ; preds = %85, %84, %74, %57, %46, %34
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @DEL_LREF(i32* %102)
  %104 = load i32*, i32** %13, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @DEL_LREF(i32* %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32*, i32** %14, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32*, i32** %14, align 8
  %114 = call i32 @DEL_LREF(i32* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i64, i64* %16, align 8
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %115, %30, %22
  %118 = load i64, i64* %6, align 8
  ret i64 %118
}

declare dso_local %struct.TYPE_11__** @GET_ENV(...) #1

declare dso_local i32* @CALL_STATICOBJ(i64, i32, i32) #1

declare dso_local i64 @CHECK_EXCEPTION(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @NEW_OBJECT(i32, i32*) #1

declare dso_local i32 @CALL_VOID(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @Process(i32*, %struct.TYPE_11__**, i32*, i32*, i64, i32*, i32, i32**) #1

declare dso_local i32 @DEL_LREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
