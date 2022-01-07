; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_xkeymap_translate_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_xkeymap_translate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_7__** }

@KEYMAP_MASK = common dso_local global i64 0, align 8
@MapInhibitMask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Inhibiting key\0A\00", align 1
@MapLocalStateMask = common dso_local global i32 0, align 4
@ShiftMask = common dso_local global i32 0, align 4
@MapLeftShiftMask = common dso_local global i8* null, align 8
@MapShiftMask = common dso_local global i32 0, align 4
@MapCtrlMask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Non-physical Shift + Ctrl pressed, releasing Shift\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Found scancode translation, scancode=0x%x, modifiers=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"No translation for (keysym 0x%lx, %s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Sending guessed scancode 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"No good guess for keycode 0x%x found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xkeymap_translate_key(%struct.TYPE_7__* noalias sret %0, %struct.TYPE_8__* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %11 = bitcast %struct.TYPE_7__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @KEYMAP_MASK, align 8
  %18 = and i64 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %15, i64 %18
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %89

23:                                               ; preds = %5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = bitcast %struct.TYPE_7__* %0 to i8*
  %26 = bitcast %struct.TYPE_7__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 32, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %88

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MapInhibitMask, align 4
  %34 = call i64 @MASK_HAS_BITS(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 @DEBUG_KBD(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i32 0, i32* %38, align 4
  br label %139

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MapLocalStateMask, align 4
  %43 = call i64 @MASK_HAS_BITS(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ShiftMask, align 4
  %48 = call i64 @MASK_HAS_BITS(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** @MapLeftShiftMask, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %39
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MapShiftMask, align 4
  %59 = call i64 @MASK_HAS_BITS(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MapCtrlMask, align 4
  %67 = call i64 @MASK_HAS_BITS(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @ShiftMask, align 4
  %72 = call i64 @MASK_HAS_BITS(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = call i32 @DEBUG_KBD(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MapShiftMask, align 4
  %79 = call i32 @MASK_REMOVE_BITS(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %69, %61, %55
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = zext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @DEBUG_KBD(i8* %86)
  br label %88

88:                                               ; preds = %80, %23
  br label %138

89:                                               ; preds = %5
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @get_ksname(i64 %97)
  %99 = call i32 @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %96, i32 %98)
  br label %100

100:                                              ; preds = %95, %89
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %101, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %100
  %108 = load i32, i32* %8, align 4
  %109 = icmp ule i32 %108, 96
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub i32 %111, %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @ShiftMask, align 4
  %120 = call i64 @MASK_HAS_BITS(i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %110
  %123 = load i8*, i8** @MapLeftShiftMask, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i32 %124, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %110
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @DEBUG_KBD(i8* %130)
  br label %137

132:                                              ; preds = %107, %100
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i32 @DEBUG_KBD(i8* %135)
  br label %137

137:                                              ; preds = %132, %126
  br label %138

138:                                              ; preds = %137, %88
  br label %139

139:                                              ; preds = %138, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @MASK_HAS_BITS(i32, i32) #2

declare dso_local i32 @DEBUG_KBD(i8*) #2

declare dso_local i32 @MASK_REMOVE_BITS(i32, i32) #2

declare dso_local i32 @warning(i8*, i64, i32) #2

declare dso_local i32 @get_ksname(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
