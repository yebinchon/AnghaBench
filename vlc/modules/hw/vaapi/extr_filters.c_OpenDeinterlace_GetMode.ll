; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenDeinterlace_GetMode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenDeinterlace_GetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deint_mode = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@deint_modes = common dso_local global %struct.deint_mode* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"using %s deinterlace method\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"%s algorithm not available, falling back to %s algorithm\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no algorithm available\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.deint_mode*, i32*, i32)* @OpenDeinterlace_GetMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDeinterlace_GetMode(i32* %0, i8* %1, %struct.deint_mode* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.deint_mode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.deint_mode* %2, %struct.deint_mode** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %70

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %66, %21
  %23 = load i32, i32* %13, align 4
  %24 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.deint_mode* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %30 = load i32, i32* %13, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %29, i64 %31
  %33 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %28, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %27
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %41, i64 %43
  %45 = call i64 @OpenDeinterlace_IsValidType(i32* %38, i32* %39, i32 %40, %struct.deint_mode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %37
  %48 = load %struct.deint_mode*, %struct.deint_mode** %9, align 8
  %49 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %49, i64 %51
  %53 = bitcast %struct.deint_mode* %48 to i8*
  %54 = bitcast %struct.deint_mode* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %56, i64 %58
  %60 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @msg_Dbg(i32* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %63, i32* %6, align 4
  br label %125

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64, %27
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %22

69:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %17, %5
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %118, %70
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %74 = call i32 @ARRAY_SIZE(%struct.deint_mode* %73)
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %71
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %81 = load i32, i32* %14, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %80, i64 %82
  %84 = call i64 @OpenDeinterlace_IsValidType(i32* %77, i32* %78, i32 %79, %struct.deint_mode* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %76
  %87 = load %struct.deint_mode*, %struct.deint_mode** %9, align 8
  %88 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %88, i64 %90
  %92 = bitcast %struct.deint_mode* %87 to i8*
  %93 = bitcast %struct.deint_mode* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 8, i1 false)
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %86
  %97 = load i32*, i32** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %100 = load i32, i32* %14, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %99, i64 %101
  %103 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @msg_Info(i32* %97, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %98, i8* %104)
  br label %115

106:                                              ; preds = %86
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.deint_mode*, %struct.deint_mode** @deint_modes, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %108, i64 %110
  %112 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @msg_Dbg(i32* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %106, %96
  %116 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %116, i32* %6, align 4
  br label %125

117:                                              ; preds = %76
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %14, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %71

121:                                              ; preds = %71
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @msg_Err(i32* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %115, %47
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.deint_mode*) #1

declare dso_local i64 @OpenDeinterlace_IsValidType(i32*, i32*, i32, %struct.deint_mode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @msg_Info(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
