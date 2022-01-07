; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_channels.c_channel_send.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_channels.c_channel_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@channel_hdr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"channel_send, length = %d\0A\00", align 1
@CHANNEL_CHUNK_LENGTH = common dso_local global i32 0, align 4
@CHANNEL_FLAG_FIRST = common dso_local global i64 0, align 8
@CHANNEL_FLAG_LAST = common dso_local global i64 0, align 8
@CHANNEL_OPTION_SHOW_PROTOCOL = common dso_local global i32 0, align 4
@CHANNEL_FLAG_SHOW_PROTOCOL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Sending %d bytes with FLAG_FIRST\0A\00", align 1
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Sending %d bytes with flags %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_send(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = load i32, i32* @channel_hdr, align 4
  %14 = call i32 @s_pop_layer(%struct.TYPE_16__* %12, i32 %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = sub i64 %21, 4
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DEBUG_CHANNEL(i8* %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @CHANNEL_CHUNK_LENGTH, align 4
  %28 = call i64 @MIN(i64 %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i64, i64* @CHANNEL_FLAG_FIRST, align 8
  %36 = load i64, i64* @CHANNEL_FLAG_LAST, align 8
  %37 = or i64 %35, %36
  br label %40

38:                                               ; preds = %3
  %39 = load i64, i64* @CHANNEL_FLAG_FIRST, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i64 [ %37, %34 ], [ %39, %38 ]
  store i64 %41, i64* %8, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CHANNEL_OPTION_SHOW_PROTOCOL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i64, i64* @CHANNEL_FLAG_SHOW_PROTOCOL, align 8
  %50 = load i64, i64* %8, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @out_uint32_le(%struct.TYPE_16__* %53, i64 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @out_uint32_le(%struct.TYPE_16__* %56, i64 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32* %66, i32** %11, align 8
  %67 = load i64, i64* %9, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @DEBUG_CHANNEL(i8* %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %52
  %77 = load i32, i32* @SEC_ENCRYPT, align 4
  br label %79

78:                                               ; preds = %52
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sec_send_to_channel(%struct.TYPE_17__* %70, %struct.TYPE_16__* %71, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %152, %79
  %86 = load i64, i64* %10, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %161

88:                                               ; preds = %85
  %89 = load i64, i64* %10, align 8
  %90 = load i32, i32* @CHANNEL_CHUNK_LENGTH, align 4
  %91 = call i64 @MIN(i64 %89, i32 %90)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = sub nsw i64 %93, %92
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i64, i64* @CHANNEL_FLAG_LAST, align 8
  br label %100

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i64 [ %98, %97 ], [ 0, %99 ]
  store i64 %101, i64* %8, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CHANNEL_OPTION_SHOW_PROTOCOL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i64, i64* @CHANNEL_FLAG_SHOW_PROTOCOL, align 8
  %110 = load i64, i64* %8, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %108, %100
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %8, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @DEBUG_CHANNEL(i8* %115)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load i32, i32* @SEC_ENCRYPT, align 4
  br label %125

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 0, %124 ]
  %127 = load i64, i64* %9, align 8
  %128 = add nsw i64 %127, 8
  %129 = trunc i64 %128 to i32
  %130 = call %struct.TYPE_16__* @sec_init(%struct.TYPE_17__* %117, i32 %126, i32 %129)
  store %struct.TYPE_16__* %130, %struct.TYPE_16__** %5, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @out_uint32_le(%struct.TYPE_16__* %131, i64 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @out_uint32_le(%struct.TYPE_16__* %134, i64 %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @out_uint8p(%struct.TYPE_16__* %137, i32* %138, i64 %139)
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = call i32 @s_mark_end(%struct.TYPE_16__* %141)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %125
  %150 = load i32, i32* @SEC_ENCRYPT, align 4
  br label %152

151:                                              ; preds = %125
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ]
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @sec_send_to_channel(%struct.TYPE_17__* %143, %struct.TYPE_16__* %144, i32 %153, i32 %156)
  %158 = load i64, i64* %9, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 %158
  store i32* %160, i32** %11, align 8
  br label %85

161:                                              ; preds = %85
  ret void
}

declare dso_local i32 @s_pop_layer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @DEBUG_CHANNEL(i8*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @out_uint32_le(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @sec_send_to_channel(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @sec_init(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @out_uint8p(%struct.TYPE_16__*, i32*, i64) #1

declare dso_local i32 @s_mark_end(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
