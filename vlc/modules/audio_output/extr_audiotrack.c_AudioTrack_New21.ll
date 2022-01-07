; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_New21.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_New21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_24__**, i32*)* }

@NewObject = common dso_local global i32 0, align 4
@jfields = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"AudioFormat.Builder\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"setChannelMask\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"setEncoding\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"setSampleRate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_24__**, i32*, i32, i32, i32, i32, i32)* @AudioTrack_New21 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AudioTrack_New21(%struct.TYPE_24__** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_24__** %0, %struct.TYPE_24__*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %22 = load i32, i32* @NewObject, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 2, i32 3), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 2, i32 2), align 4
  %25 = call i32* @JNI_CALL(i32 %22, i32 %23, i32 %24)
  store i32* %25, i32** %17, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %165

29:                                               ; preds = %7
  %30 = load i32*, i32** %17, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 2, i32 1), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 3, i32 0), align 4
  %33 = call i32* (i32*, i32, ...) @JNI_CALL_OBJECT(i32* %30, i32 %31, i32 %32)
  store i32* %33, i32** %21, align 8
  %34 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %36, align 8
  %38 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = call i32 %37(%struct.TYPE_24__** %38, i32* %39)
  %41 = load i32*, i32** %17, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 2, i32 0), align 4
  %43 = call i32* (i32*, i32, ...) @JNI_CALL_OBJECT(i32* %41, i32 %42)
  store i32* %43, i32** %18, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %29
  br label %135

47:                                               ; preds = %29
  %48 = load i32, i32* @NewObject, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 1, i32 5), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 1, i32 4), align 4
  %51 = call i32* @JNI_CALL(i32 %48, i32 %49, i32 %50)
  store i32* %51, i32** %19, align 8
  %52 = load i32*, i32** %19, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %135

55:                                               ; preds = %47
  %56 = load i32*, i32** %19, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 1, i32 3), align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32* (i32*, i32, ...) @JNI_CALL_OBJECT(i32* %56, i32 %57, i32 %58)
  store i32* %59, i32** %21, align 8
  %60 = call i64 @CHECK_EXCEPTION(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %65, align 8
  %67 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %68 = load i32*, i32** %21, align 8
  %69 = call i32 %66(%struct.TYPE_24__** %67, i32* %68)
  br label %135

70:                                               ; preds = %55
  %71 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %73, align 8
  %75 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = call i32 %74(%struct.TYPE_24__** %75, i32* %76)
  %78 = load i32*, i32** %19, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 1, i32 2), align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32* (i32*, i32, ...) @JNI_CALL_OBJECT(i32* %78, i32 %79, i32 %80)
  store i32* %81, i32** %21, align 8
  %82 = call i64 @CHECK_EXCEPTION(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %70
  %85 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %87, align 8
  %89 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %90 = load i32*, i32** %21, align 8
  %91 = call i32 %88(%struct.TYPE_24__** %89, i32* %90)
  br label %135

92:                                               ; preds = %70
  %93 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %95, align 8
  %97 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %98 = load i32*, i32** %21, align 8
  %99 = call i32 %96(%struct.TYPE_24__** %97, i32* %98)
  %100 = load i32*, i32** %19, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 1, i32 1), align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32* (i32*, i32, ...) @JNI_CALL_OBJECT(i32* %100, i32 %101, i32 %102)
  store i32* %103, i32** %21, align 8
  %104 = call i64 @CHECK_EXCEPTION(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %92
  %107 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %109, align 8
  %111 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %112 = load i32*, i32** %21, align 8
  %113 = call i32 %110(%struct.TYPE_24__** %111, i32* %112)
  br label %135

114:                                              ; preds = %92
  %115 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %117, align 8
  %119 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %120 = load i32*, i32** %21, align 8
  %121 = call i32 %118(%struct.TYPE_24__** %119, i32* %120)
  %122 = load i32*, i32** %19, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 1, i32 0), align 4
  %124 = call i32* (i32*, i32, ...) @JNI_CALL_OBJECT(i32* %122, i32 %123)
  store i32* %124, i32** %20, align 8
  %125 = load i32*, i32** %20, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %114
  br label %135

128:                                              ; preds = %114
  %129 = load i32*, i32** %18, align 8
  %130 = load i32*, i32** %20, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @jfields, i32 0, i32 0, i32 0), align 4
  %133 = load i32, i32* %15, align 4
  %134 = call i32* @JNI_AT_NEW(i32* %129, i32* %130, i32 %131, i32 %132, i32 %133)
  store i32* %134, i32** %16, align 8
  br label %135

135:                                              ; preds = %128, %127, %106, %84, %62, %54, %46
  %136 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  %139 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %138, align 8
  %140 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = call i32 %139(%struct.TYPE_24__** %140, i32* %141)
  %143 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %145, align 8
  %147 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %148 = load i32*, i32** %18, align 8
  %149 = call i32 %146(%struct.TYPE_24__** %147, i32* %148)
  %150 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %152, align 8
  %154 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %155 = load i32*, i32** %19, align 8
  %156 = call i32 %153(%struct.TYPE_24__** %154, i32* %155)
  %157 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %159, align 8
  %161 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %162 = load i32*, i32** %20, align 8
  %163 = call i32 %160(%struct.TYPE_24__** %161, i32* %162)
  %164 = load i32*, i32** %16, align 8
  store i32* %164, i32** %8, align 8
  br label %165

165:                                              ; preds = %135, %28
  %166 = load i32*, i32** %8, align 8
  ret i32* %166
}

declare dso_local i32* @JNI_CALL(i32, i32, i32) #1

declare dso_local i32* @JNI_CALL_OBJECT(i32*, i32, ...) #1

declare dso_local i64 @CHECK_EXCEPTION(i8*, i8*) #1

declare dso_local i32* @JNI_AT_NEW(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
