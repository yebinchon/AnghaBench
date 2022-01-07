; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_CommandSend.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_CommandSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@MMS_CMD_HEADERSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to send command\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i32, i32*, i32)* @mms_CommandSend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms_CommandSend(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %15, align 8
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %18, align 4
  br label %23

23:                                               ; preds = %27, %6
  %24 = load i32, i32* %18, align 4
  %25 = and i32 %24, 7
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %18, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %18, align 4
  br label %23

30:                                               ; preds = %23
  %31 = load i32, i32* %18, align 4
  %32 = ashr i32 %31, 3
  store i32 %32, i32* %16, align 4
  %33 = call i32 @var_buffer_initwrite(%struct.TYPE_12__* %14, i32 0)
  %34 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 1)
  %35 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 -1341392178)
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* @MMS_CMD_HEADERSIZE, align 4
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 %38, 16
  %40 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 %39)
  %41 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 542330189)
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, 4
  %44 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = call i32 @var_buffer_add64(%struct.TYPE_12__* %14, i32 0)
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 2
  %56 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = or i32 196608, %57
  %59 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @var_buffer_add32(%struct.TYPE_12__* %14, i32 %62)
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %30
  %67 = load i32, i32* %18, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @var_buffer_addmemory(%struct.TYPE_12__* %14, i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %66, %30
  %74 = call i32 @var_buffer_add64(%struct.TYPE_12__* %14, i32 0)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = call i32 @vlc_mutex_lock(i32* %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sub nsw i32 8, %88
  %90 = sub nsw i32 %85, %89
  %91 = call i32 @net_Write(%struct.TYPE_13__* %78, i32 %81, i32 %83, i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = call i32 @vlc_mutex_unlock(i32* %93)
  %95 = load i32, i32* %17, align 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %98, %99
  %101 = sub nsw i32 8, %100
  %102 = sub nsw i32 %97, %101
  %103 = icmp ne i32 %95, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %73
  %105 = call i32 @var_buffer_free(%struct.TYPE_12__* %14)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = call i32 @msg_Err(%struct.TYPE_13__* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %108, i32* %7, align 4
  br label %112

109:                                              ; preds = %73
  %110 = call i32 @var_buffer_free(%struct.TYPE_12__* %14)
  %111 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @var_buffer_initwrite(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @var_buffer_add32(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @var_buffer_add64(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @var_buffer_addmemory(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @net_Write(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @var_buffer_free(%struct.TYPE_12__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
