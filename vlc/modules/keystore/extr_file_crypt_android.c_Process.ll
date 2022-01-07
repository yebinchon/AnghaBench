; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_Process.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__**, i32*)*, i32* (%struct.TYPE_10__**, i32*, i32)*, i32 (%struct.TYPE_10__**, i32*, i32*, i32)*, i32 (%struct.TYPE_10__**, i32*, i32, i64, i32*)*, i32* (%struct.TYPE_10__**, i64)* }

@Cipher = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_10__**, i32, i32*, i64, i32*, i32, i32**)* @Process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Process(i32* %0, %struct.TYPE_10__** %1, i32 %2, i32* %3, i64 %4, i32* %5, i32 %6, i32** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32** %7, i32*** %16, align 8
  store i64 0, i64* %17, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i32* (%struct.TYPE_10__**, i64)*, i32* (%struct.TYPE_10__**, i64)** %25, align 8
  %27 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32* %26(%struct.TYPE_10__** %27, i64 %28)
  store i32* %29, i32** %19, align 8
  %30 = call i64 (...) @CHECK_EXCEPTION()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %8
  br label %144

33:                                               ; preds = %8
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = load i32 (%struct.TYPE_10__**, i32*, i32, i64, i32*)*, i32 (%struct.TYPE_10__**, i32*, i32, i64, i32*)** %36, align 8
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 %37(%struct.TYPE_10__** %38, i32* %39, i32 0, i64 %40, i32* %41)
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Cipher, i32 0, i32 0), align 4
  %45 = load i32*, i32** %19, align 8
  %46 = call i64 @CALL_OBJ(i32 %43, i32 %44, i32* %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %20, align 8
  %48 = call i64 (...) @CHECK_EXCEPTION()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %144

51:                                               ; preds = %33
  %52 = load i32*, i32** %20, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %144

55:                                               ; preds = %51
  %56 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_10__**, i32*)*, i32 (%struct.TYPE_10__**, i32*)** %58, align 8
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %61 = load i32*, i32** %20, align 8
  %62 = call i32 %59(%struct.TYPE_10__** %60, i32* %61)
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %144

66:                                               ; preds = %55
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32* (%struct.TYPE_10__**, i32*, i32)*, i32* (%struct.TYPE_10__**, i32*, i32)** %69, align 8
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = call i32* %70(%struct.TYPE_10__** %71, i32* %72, i32 0)
  store i32* %73, i32** %22, align 8
  %74 = load i32, i32* %15, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i32* @malloc(i32 %82)
  br label %87

84:                                               ; preds = %66
  %85 = load i32, i32* %21, align 4
  %86 = call i32* @malloc(i32 %85)
  br label %87

87:                                               ; preds = %84, %76
  %88 = phi i32* [ %83, %76 ], [ %86, %84 ]
  store i32* %88, i32** %18, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32 (%struct.TYPE_10__**, i32*, i32*, i32)*, i32 (%struct.TYPE_10__**, i32*, i32*, i32)** %94, align 8
  %96 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %97 = load i32*, i32** %20, align 8
  %98 = load i32*, i32** %22, align 8
  %99 = call i32 %95(%struct.TYPE_10__** %96, i32* %97, i32* %98, i32 0)
  %100 = load i32*, i32** %18, align 8
  %101 = call i32 @free(i32* %100)
  br label %144

102:                                              ; preds = %87
  %103 = load i32, i32* %15, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load i32*, i32** %18, align 8
  %107 = call i32 @memcpy(i32* %106, i32* %15, i32 4)
  %108 = load i32*, i32** %18, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32*, i32** %14, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @memcpy(i32* %109, i32* %110, i32 %111)
  %113 = load i32*, i32** %18, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32*, i32** %22, align 8
  %119 = load i32, i32* %21, align 4
  %120 = call i32 @memcpy(i32* %117, i32* %118, i32 %119)
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 4
  store i64 %125, i64* %17, align 8
  br label %133

126:                                              ; preds = %102
  %127 = load i32*, i32** %18, align 8
  %128 = load i32*, i32** %22, align 8
  %129 = load i32, i32* %21, align 4
  %130 = call i32 @memcpy(i32* %127, i32* %128, i32 %129)
  %131 = load i32, i32* %21, align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %17, align 8
  br label %133

133:                                              ; preds = %126, %105
  %134 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load i32 (%struct.TYPE_10__**, i32*, i32*, i32)*, i32 (%struct.TYPE_10__**, i32*, i32*, i32)** %136, align 8
  %138 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %139 = load i32*, i32** %20, align 8
  %140 = load i32*, i32** %22, align 8
  %141 = call i32 %137(%struct.TYPE_10__** %138, i32* %139, i32* %140, i32 0)
  %142 = load i32*, i32** %18, align 8
  %143 = load i32**, i32*** %16, align 8
  store i32* %142, i32** %143, align 8
  br label %144

144:                                              ; preds = %133, %91, %65, %54, %50, %32
  %145 = load i32*, i32** %19, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32*, i32** %19, align 8
  %149 = call i32 @DEL_LREF(i32* %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32*, i32** %20, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32*, i32** %20, align 8
  %155 = call i32 @DEL_LREF(i32* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i64, i64* %17, align 8
  ret i64 %157
}

declare dso_local i64 @CHECK_EXCEPTION(...) #1

declare dso_local i64 @CALL_OBJ(i32, i32, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @DEL_LREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
