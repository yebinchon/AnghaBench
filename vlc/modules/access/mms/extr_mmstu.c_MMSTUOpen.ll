; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_MMSTUOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_MMSTUOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__*, i32, i32, i32, i32* }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i32, i64, i64, %struct.TYPE_16__, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i8*, i32 }

@Block = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@Seek = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mms-timeout\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid server name\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@MMS_PROTO_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mmsu\00", align 1
@MMS_PROTO_UDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mmst\00", align 1
@MMS_PROTO_TCP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot connect to server\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"connected to %s:%d\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"cannot start stream\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MMSTUOpen(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 6
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* @Block, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @Control, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @Seek, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = call %struct.TYPE_18__* @calloc(i32 1, i32 72)
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %4, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %20, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = icmp ne %struct.TYPE_18__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %24, i32* %2, align 4
  br label %207

25:                                               ; preds = %1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = call i32 @var_CreateGetInteger(%struct.TYPE_17__* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 9
  %32 = call i32 @vlc_mutex_init(i32* %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vlc_UrlParse(%struct.TYPE_19__* %34, i32 %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %25
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %44, %25
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = call i32 @msg_Err(%struct.TYPE_17__* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 8
  %57 = call i32 @vlc_UrlClean(%struct.TYPE_19__* %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 9
  %60 = call i32 @vlc_mutex_destroy(i32* %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = call i32 @free(%struct.TYPE_18__* %61)
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %2, align 4
  br label %207

64:                                               ; preds = %44
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  store i32 1755, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32, i32* @MMS_PROTO_AUTO, align 4
  store i32 %75, i32* %5, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @strncmp(i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @MMS_PROTO_UDP, align 4
  store i32 %82, i32* %5, align 4
  br label %92

83:                                               ; preds = %74
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @strncmp(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @MMS_PROTO_TCP, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %83
  br label %92

92:                                               ; preds = %91, %81
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @MMS_PROTO_AUTO, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 8
  %100 = load i32, i32* @MMS_PROTO_TCP, align 4
  %101 = call i32 @MMSOpen(%struct.TYPE_17__* %97, %struct.TYPE_19__* %99, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 8
  %108 = load i32, i32* @MMS_PROTO_UDP, align 4
  %109 = call i32 @MMSOpen(%struct.TYPE_17__* %105, %struct.TYPE_19__* %107, i32 %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %104, %96
  br label %117

111:                                              ; preds = %92
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @MMSOpen(%struct.TYPE_17__* %112, %struct.TYPE_19__* %114, i32 %115)
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %111, %110
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = call i32 @msg_Err(%struct.TYPE_17__* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 8
  %125 = call i32 @vlc_UrlClean(%struct.TYPE_19__* %124)
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 9
  %128 = call i32 @vlc_mutex_destroy(i32* %127)
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = call i32 @free(%struct.TYPE_18__* %129)
  %131 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %131, i32* %2, align 4
  br label %207

132:                                              ; preds = %117
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @msg_Dbg(%struct.TYPE_17__* %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %137, i32 %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp sle i64 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %132
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %153, %147, %132
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp sle i64 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = ashr i32 %168, 24
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %174

171:                                              ; preds = %165, %160
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  store i32 0, i32* %173, align 4
  br label %193

174:                                              ; preds = %165
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  store i32 1, i32* %176, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = mul nsw i32 %184, %188
  %190 = add nsw i32 %180, %189
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %174, %171
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 4
  store i32 0, i32* %195, align 4
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %197 = call i64 @MMSStart(%struct.TYPE_17__* %196, i32 -1)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %201 = call i32 @msg_Err(%struct.TYPE_17__* %200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %203 = call i32 @MMSTUClose(%struct.TYPE_17__* %202)
  %204 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %204, i32* %2, align 4
  br label %207

205:                                              ; preds = %193
  %206 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %205, %199, %120, %52, %23
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.TYPE_18__* @calloc(i32, i32) #1

declare dso_local i32 @var_CreateGetInteger(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_UrlParse(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_19__*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @MMSOpen(%struct.TYPE_17__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_17__*, i8*, i8*, i32) #1

declare dso_local i64 @MMSStart(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @MMSTUClose(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
