; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32 }

@DBUS_BUS_SESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"vlc_dbus_init : Connection error to session bus (%s)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"vlc_dbus_init : connection is NULL\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@KWALLET_APP_ID = common dso_local global i8* null, align 8
@DBUS_INSTANCE_PREFIX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%s.%s_%02u\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"vlc_dbus_init : dbus_bus_request_name : error (%s)\00", align 1
@DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"vlc_dbus_init : Too many kwallet instances\00", align 1
@SERVICE_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"vlc_dbus_init : kwallet_is_enabled failed\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"vlc_dbus_init : No kwallet service enabled\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"vlc_dbus_init : kwallet_network_wallet has failed\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @vlc_dbus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_dbus_init(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  %16 = call i32 @dbus_error_init(%struct.TYPE_15__* %6)
  %17 = load i32, i32* @DBUS_BUS_SESSION, align 4
  %18 = call i32 @dbus_bus_get_private(i32 %17, %struct.TYPE_15__* %6)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = call i64 @dbus_error_is_set(%struct.TYPE_15__* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @dbus_error_free(%struct.TYPE_15__* %6)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %2, align 4
  br label %158

38:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %93, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp ule i32 %40, 99
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %96

49:                                               ; preds = %47
  %50 = load i8*, i8** @KWALLET_APP_ID, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = load i8*, i8** @DBUS_INSTANCE_PREFIX, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = add nsw i64 %51, %53
  %55 = add nsw i64 %54, 5
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %8, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %9, align 8
  %58 = load i8*, i8** @KWALLET_APP_ID, align 8
  %59 = load i8*, i8** @DBUS_INSTANCE_PREFIX, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8* %59, i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dbus_bus_request_name(i32 %64, i8* %57, i32 0, %struct.TYPE_15__* %6)
  store i32 %65, i32* %5, align 4
  %66 = call i64 @dbus_error_is_set(%struct.TYPE_15__* %6)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %49
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = call i32 @dbus_error_free(%struct.TYPE_15__* %6)
  br label %74

74:                                               ; preds = %68, %49
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = call i32* @strdup(i8* %57)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 5, i32* %10, align 4
  br label %89

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %74
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %86, %88
  %90 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %10, align 4
  switch i32 %91, label %160 [
    i32 0, label %92
    i32 5, label %144
  ]

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %39

96:                                               ; preds = %47
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %144

104:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %122, %104
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @SERVICE_MAX, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %105
  store i32 0, i32* %12, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i64 @kwallet_is_enabled(%struct.TYPE_14__* %110, i32 %111, i32* %12)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %144

117:                                              ; preds = %109
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %125

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %11, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %105

125:                                              ; preds = %120, %105
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @SERVICE_MAX, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %144

132:                                              ; preds = %125
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = call i64 @kwallet_network_wallet(%struct.TYPE_14__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %140, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  br label %144

142:                                              ; preds = %132
  %143 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %143, i32* %2, align 4
  br label %158

144:                                              ; preds = %139, %129, %114, %101, %89
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @FREENULL(i32* %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dbus_connection_close(i32 %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @dbus_connection_unref(i32 %155)
  %157 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %144, %142, %34
  %159 = load i32, i32* %2, align 4
  ret i32 %159

160:                                              ; preds = %89
  unreachable
}

declare dso_local i32 @dbus_error_init(%struct.TYPE_15__*) #1

declare dso_local i32 @dbus_bus_get_private(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @dbus_error_is_set(%struct.TYPE_15__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @dbus_error_free(%struct.TYPE_15__*) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @dbus_bus_request_name(i32, i8*, i32, %struct.TYPE_15__*) #1

declare dso_local i32* @strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @kwallet_is_enabled(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i64 @kwallet_network_wallet(%struct.TYPE_14__*) #1

declare dso_local i32 @FREENULL(i32*) #1

declare dso_local i32 @dbus_connection_close(i32) #1

declare dso_local i32 @dbus_connection_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
