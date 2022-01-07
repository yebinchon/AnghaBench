; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_ensure_remote_modifiers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_ensure_remote_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32 }

@MapNumLockMask = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Remote NumLock state is incorrect, activating NumLock.\0A\00", align 1
@KBD_FLAG_NUMLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Remote NumLock state is incorrect, deactivating NumLock.\0A\00", align 1
@RDP_INPUT_SYNCHRONIZE = common dso_local global i32 0, align 4
@MapShiftMask = common dso_local global i64 0, align 8
@MapLeftShiftMask = common dso_local global i64 0, align 8
@RDP_KEYPRESS = common dso_local global i32 0, align 4
@SCANCODE_CHAR_LSHIFT = common dso_local global i32 0, align 4
@MapRightShiftMask = common dso_local global i64 0, align 8
@SCANCODE_CHAR_RSHIFT = common dso_local global i32 0, align 4
@RDP_KEYRELEASE = common dso_local global i32 0, align 4
@MapAltGrMask = common dso_local global i64 0, align 8
@SCANCODE_CHAR_RALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ensure_remote_modifiers(%struct.TYPE_10__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = bitcast %struct.TYPE_9__* %5 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %2, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %3, i32* %11, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @is_modifier(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %148

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MapNumLockMask, align 8
  %26 = call i64 @MASK_HAS_BITS(i64 %24, i64 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MapNumLockMask, align 8
  %32 = call i64 @MASK_HAS_BITS(i64 %30, i64 %31)
  %33 = icmp ne i64 %26, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MapNumLockMask, align 8
  %38 = call i64 @MASK_HAS_BITS(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = call i32 @DEBUG_KBD(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* @KBD_FLAG_NUMLOCK, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* @MapNumLockMask, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %52

47:                                               ; preds = %34
  %48 = call i32 @DEBUG_KBD(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = load i32, i32* @RDP_INPUT_SYNCHRONIZE, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @rdp_send_input(%struct.TYPE_10__* %53, i32 0, i32 %54, i32 0, i64 %55, i32 0)
  br label %57

57:                                               ; preds = %52, %22
  br label %58

58:                                               ; preds = %57, %17
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MapShiftMask, align 8
  %62 = call i64 @MASK_HAS_BITS(i64 %60, i64 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MapShiftMask, align 8
  %68 = call i64 @MASK_HAS_BITS(i64 %66, i64 %67)
  %69 = icmp ne i64 %62, %68
  br i1 %69, label %70, label %117

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MapLeftShiftMask, align 8
  %74 = call i64 @MASK_HAS_BITS(i64 %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @RDP_KEYPRESS, align 4
  %80 = load i32, i32* @SCANCODE_CHAR_LSHIFT, align 4
  %81 = call i32 @rdp_send_scancode(%struct.TYPE_10__* %77, i32 %78, i32 %79, i32 %80)
  br label %116

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MapRightShiftMask, align 8
  %86 = call i64 @MASK_HAS_BITS(i64 %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @RDP_KEYPRESS, align 4
  %92 = load i32, i32* @SCANCODE_CHAR_RSHIFT, align 4
  %93 = call i32 @rdp_send_scancode(%struct.TYPE_10__* %89, i32 %90, i32 %91, i32 %92)
  br label %115

94:                                               ; preds = %82
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MapLeftShiftMask, align 8
  %100 = call i64 @MASK_HAS_BITS(i64 %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @RDP_KEYRELEASE, align 4
  %106 = load i32, i32* @SCANCODE_CHAR_LSHIFT, align 4
  %107 = call i32 @rdp_send_scancode(%struct.TYPE_10__* %103, i32 %104, i32 %105, i32 %106)
  br label %114

108:                                              ; preds = %94
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @RDP_KEYRELEASE, align 4
  %112 = load i32, i32* @SCANCODE_CHAR_RSHIFT, align 4
  %113 = call i32 @rdp_send_scancode(%struct.TYPE_10__* %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %102
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115, %76
  br label %117

117:                                              ; preds = %116, %58
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MapAltGrMask, align 8
  %121 = call i64 @MASK_HAS_BITS(i64 %119, i64 %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MapAltGrMask, align 8
  %127 = call i64 @MASK_HAS_BITS(i64 %125, i64 %126)
  %128 = icmp ne i64 %121, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MapAltGrMask, align 8
  %133 = call i64 @MASK_HAS_BITS(i64 %131, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @RDP_KEYPRESS, align 4
  %139 = load i32, i32* @SCANCODE_CHAR_RALT, align 4
  %140 = call i32 @rdp_send_scancode(%struct.TYPE_10__* %136, i32 %137, i32 %138, i32 %139)
  br label %147

141:                                              ; preds = %129
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @RDP_KEYRELEASE, align 4
  %145 = load i32, i32* @SCANCODE_CHAR_RALT, align 4
  %146 = call i32 @rdp_send_scancode(%struct.TYPE_10__* %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %135
  br label %148

148:                                              ; preds = %16, %147, %117
  ret void
}

declare dso_local i64 @is_modifier(i32) #1

declare dso_local i64 @MASK_HAS_BITS(i64, i64) #1

declare dso_local i32 @DEBUG_KBD(i8*) #1

declare dso_local i32 @rdp_send_input(%struct.TYPE_10__*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @rdp_send_scancode(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
