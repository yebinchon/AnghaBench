; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_media.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }
%struct.tgl_message_media = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.tgl_message_media*, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.tgl_message_media*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"[photo bad]\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"[photo %s]\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[photo]\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@TGLDF_IMAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@TGLDF_AUDIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@TGLDF_VIDEO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@TGLDF_STICKER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"sticker\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"document\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" %s:\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" type=%s\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" size=%dx%d\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c" duration=%d\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" size=\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%dB\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%dKiB\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%dMiB\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%dGiB\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"[geo https://maps.google.com/?q=%.6lf,%.6lf]\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"[contact] \00", align 1
@COLOR_RED = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"[unsupported]\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"[webpage:\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c" url:'%s'\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" title:'%s'\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c" description:'%s'\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c" author:'%s'\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"[geo https://maps.google.com/?q=%.6lf,%.6lf\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c" address:'%s'\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c" provider:'%s'\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c" id:'%s'\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_media(%struct.in_ev* %0, %struct.tgl_message_media* %1) #0 {
  %3 = alloca %struct.in_ev*, align 8
  %4 = alloca %struct.tgl_message_media*, align 8
  store %struct.in_ev* %0, %struct.in_ev** %3, align 8
  store %struct.tgl_message_media* %1, %struct.tgl_message_media** %4, align 8
  %5 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %6 = call i32 @assert(%struct.tgl_message_media* %5)
  %7 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %8 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %648 [
    i32 133, label %10
    i32 132, label %11
    i32 136, label %58
    i32 138, label %58
    i32 129, label %58
    i32 135, label %275
    i32 134, label %477
    i32 137, label %488
    i32 131, label %509
    i32 128, label %512
    i32 130, label %581
  ]

10:                                               ; preds = %2
  br label %655

11:                                               ; preds = %2
  %12 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %13 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %12, i32 0, i32 20
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %18 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %46

19:                                               ; preds = %11
  %20 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %21 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %20, i32 0, i32 20
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %28 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %27, i32 0, i32 20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strlen(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %36 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %37 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %36, i32 0, i32 20
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %45

42:                                               ; preds = %26, %19
  %43 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %44 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45, %16
  %47 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %48 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %53 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %54 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  br label %655

58:                                               ; preds = %2, %2, %2
  %59 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %60 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %62 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %61, i32 0, i32 17
  %63 = load %struct.tgl_message_media*, %struct.tgl_message_media** %62, align 8
  %64 = call i32 @assert(%struct.tgl_message_media* %63)
  %65 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %66 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %65, i32 0, i32 17
  %67 = load %struct.tgl_message_media*, %struct.tgl_message_media** %66, align 8
  %68 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TGLDF_IMAGE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %75 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %118

76:                                               ; preds = %58
  %77 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %78 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %77, i32 0, i32 17
  %79 = load %struct.tgl_message_media*, %struct.tgl_message_media** %78, align 8
  %80 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @TGLDF_AUDIO, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %87 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %117

88:                                               ; preds = %76
  %89 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %90 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %89, i32 0, i32 17
  %91 = load %struct.tgl_message_media*, %struct.tgl_message_media** %90, align 8
  %92 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TGLDF_VIDEO, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %99 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %116

100:                                              ; preds = %88
  %101 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %102 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %101, i32 0, i32 17
  %103 = load %struct.tgl_message_media*, %struct.tgl_message_media** %102, align 8
  %104 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TGLDF_STICKER, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %111 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %115

112:                                              ; preds = %100
  %113 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %114 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %85
  br label %118

118:                                              ; preds = %117, %73
  %119 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %120 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %119, i32 0, i32 17
  %121 = load %struct.tgl_message_media*, %struct.tgl_message_media** %120, align 8
  %122 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %118
  %126 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %127 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %126, i32 0, i32 17
  %128 = load %struct.tgl_message_media*, %struct.tgl_message_media** %127, align 8
  %129 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @strlen(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %135 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %136 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %135, i32 0, i32 17
  %137 = load %struct.tgl_message_media*, %struct.tgl_message_media** %136, align 8
  %138 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %139)
  br label %144

141:                                              ; preds = %125, %118
  %142 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %143 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %133
  %145 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %146 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %145, i32 0, i32 17
  %147 = load %struct.tgl_message_media*, %struct.tgl_message_media** %146, align 8
  %148 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %153 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %154 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %153, i32 0, i32 17
  %155 = load %struct.tgl_message_media*, %struct.tgl_message_media** %154, align 8
  %156 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %151, %144
  %160 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %161 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %160, i32 0, i32 17
  %162 = load %struct.tgl_message_media*, %struct.tgl_message_media** %161, align 8
  %163 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %162, i32 0, i32 19
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %159
  %167 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %168 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %167, i32 0, i32 17
  %169 = load %struct.tgl_message_media*, %struct.tgl_message_media** %168, align 8
  %170 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %169, i32 0, i32 18
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %175 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %176 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %175, i32 0, i32 17
  %177 = load %struct.tgl_message_media*, %struct.tgl_message_media** %176, align 8
  %178 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %177, i32 0, i32 19
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %181 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %180, i32 0, i32 17
  %182 = load %struct.tgl_message_media*, %struct.tgl_message_media** %181, align 8
  %183 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %182, i32 0, i32 18
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %179, i32 %184)
  br label %186

186:                                              ; preds = %173, %166, %159
  %187 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %188 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %187, i32 0, i32 17
  %189 = load %struct.tgl_message_media*, %struct.tgl_message_media** %188, align 8
  %190 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %195 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %196 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %195, i32 0, i32 17
  %197 = load %struct.tgl_message_media*, %struct.tgl_message_media** %196, align 8
  %198 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %193, %186
  %202 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %203 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %204 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %205 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %204, i32 0, i32 17
  %206 = load %struct.tgl_message_media*, %struct.tgl_message_media** %205, align 8
  %207 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %208, 1024
  br i1 %209, label %210, label %218

210:                                              ; preds = %201
  %211 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %212 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %213 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %212, i32 0, i32 17
  %214 = load %struct.tgl_message_media*, %struct.tgl_message_media** %213, align 8
  %215 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %216)
  br label %261

218:                                              ; preds = %201
  %219 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %220 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %219, i32 0, i32 17
  %221 = load %struct.tgl_message_media*, %struct.tgl_message_media** %220, align 8
  %222 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %223, 1048576
  br i1 %224, label %225, label %234

225:                                              ; preds = %218
  %226 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %227 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %228 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %227, i32 0, i32 17
  %229 = load %struct.tgl_message_media*, %struct.tgl_message_media** %228, align 8
  %230 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = ashr i32 %231, 10
  %233 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %232)
  br label %260

234:                                              ; preds = %218
  %235 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %236 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %235, i32 0, i32 17
  %237 = load %struct.tgl_message_media*, %struct.tgl_message_media** %236, align 8
  %238 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %239, 1073741824
  br i1 %240, label %241, label %250

241:                                              ; preds = %234
  %242 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %243 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %244 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %243, i32 0, i32 17
  %245 = load %struct.tgl_message_media*, %struct.tgl_message_media** %244, align 8
  %246 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = ashr i32 %247, 20
  %249 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %248)
  br label %259

250:                                              ; preds = %234
  %251 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %252 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %253 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %252, i32 0, i32 17
  %254 = load %struct.tgl_message_media*, %struct.tgl_message_media** %253, align 8
  %255 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 30
  %258 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %250, %241
  br label %260

260:                                              ; preds = %259, %225
  br label %261

261:                                              ; preds = %260, %210
  %262 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %263 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %264 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %265 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %261
  %269 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %270 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %271 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %269, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %268, %261
  br label %655

275:                                              ; preds = %2
  %276 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %277 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %278 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %279 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %278, i32 0, i32 16
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @TGLDF_IMAGE, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %275
  %287 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %288 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %331

289:                                              ; preds = %275
  %290 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %291 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %290, i32 0, i32 16
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @TGLDF_AUDIO, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %289
  %299 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %300 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %330

301:                                              ; preds = %289
  %302 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %303 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %302, i32 0, i32 16
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @TGLDF_VIDEO, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %301
  %311 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %312 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %329

313:                                              ; preds = %301
  %314 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %315 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %314, i32 0, i32 16
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @TGLDF_STICKER, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %313
  %323 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %324 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %323, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %328

325:                                              ; preds = %313
  %326 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %327 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %326, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %328

328:                                              ; preds = %325, %322
  br label %329

329:                                              ; preds = %328, %310
  br label %330

330:                                              ; preds = %329, %298
  br label %331

331:                                              ; preds = %330, %286
  %332 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %333 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %332, i32 0, i32 16
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %354

338:                                              ; preds = %331
  %339 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %340 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %339, i32 0, i32 16
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @strlen(i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %338
  %347 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %348 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %349 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %348, i32 0, i32 16
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %347, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %352)
  br label %357

354:                                              ; preds = %338, %331
  %355 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %356 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %355, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %357

357:                                              ; preds = %354, %346
  %358 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %359 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %358, i32 0, i32 16
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %357
  %365 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %366 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %367 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %366, i32 0, i32 16
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 4
  %371 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %365, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %370)
  br label %372

372:                                              ; preds = %364, %357
  %373 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %374 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %373, i32 0, i32 16
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %399

379:                                              ; preds = %372
  %380 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %381 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %380, i32 0, i32 16
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 5
  %384 = load i32, i32* %383, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %399

386:                                              ; preds = %379
  %387 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %388 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %389 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %388, i32 0, i32 16
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %394 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %393, i32 0, i32 16
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 4
  %398 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %387, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %392, i32 %397)
  br label %399

399:                                              ; preds = %386, %379, %372
  %400 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %401 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %400, i32 0, i32 16
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %414

406:                                              ; preds = %399
  %407 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %408 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %409 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %408, i32 0, i32 16
  %410 = load %struct.TYPE_6__*, %struct.TYPE_6__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %407, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %412)
  br label %414

414:                                              ; preds = %406, %399
  %415 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %416 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %415, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %417 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %418 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %417, i32 0, i32 16
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = icmp slt i32 %421, 1024
  br i1 %422, label %423, label %431

423:                                              ; preds = %414
  %424 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %425 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %426 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %425, i32 0, i32 16
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 4
  %430 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %424, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %429)
  br label %474

431:                                              ; preds = %414
  %432 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %433 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %432, i32 0, i32 16
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 4
  %437 = icmp slt i32 %436, 1048576
  br i1 %437, label %438, label %447

438:                                              ; preds = %431
  %439 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %440 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %441 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %440, i32 0, i32 16
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = ashr i32 %444, 10
  %446 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %439, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %445)
  br label %473

447:                                              ; preds = %431
  %448 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %449 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %448, i32 0, i32 16
  %450 = load %struct.TYPE_6__*, %struct.TYPE_6__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 4
  %453 = icmp slt i32 %452, 1073741824
  br i1 %453, label %454, label %463

454:                                              ; preds = %447
  %455 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %456 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %457 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %456, i32 0, i32 16
  %458 = load %struct.TYPE_6__*, %struct.TYPE_6__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 4
  %461 = ashr i32 %460, 20
  %462 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %455, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %461)
  br label %472

463:                                              ; preds = %447
  %464 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %465 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %466 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %465, i32 0, i32 16
  %467 = load %struct.TYPE_6__*, %struct.TYPE_6__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 4
  %469 = load i32, i32* %468, align 4
  %470 = ashr i32 %469, 30
  %471 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %464, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %470)
  br label %472

472:                                              ; preds = %463, %454
  br label %473

473:                                              ; preds = %472, %438
  br label %474

474:                                              ; preds = %473, %423
  %475 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %476 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %475, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %655

477:                                              ; preds = %2
  %478 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %479 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %480 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %479, i32 0, i32 15
  %481 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %484 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %483, i32 0, i32 15
  %485 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %478, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 %482, i32 %486)
  br label %655

488:                                              ; preds = %2
  %489 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %490 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %489, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %491 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %492 = load i32, i32* @COLOR_RED, align 4
  %493 = call i32 @mpush_color(%struct.in_ev* %491, i32 %492)
  %494 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %495 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %496 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %495, i32 0, i32 14
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %499 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %498, i32 0, i32 13
  %500 = load i32, i32* %499, align 8
  %501 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %494, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %497, i32 %500)
  %502 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %503 = call i32 @mpop_color(%struct.in_ev* %502)
  %504 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %505 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %506 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %505, i32 0, i32 6
  %507 = load i32, i32* %506, align 8
  %508 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %504, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i32 %507)
  br label %655

509:                                              ; preds = %2
  %510 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %511 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %510, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %655

512:                                              ; preds = %2
  %513 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %514 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %513, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %515 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %516 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %515, i32 0, i32 12
  %517 = load %struct.tgl_message_media*, %struct.tgl_message_media** %516, align 8
  %518 = call i32 @assert(%struct.tgl_message_media* %517)
  %519 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %520 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %519, i32 0, i32 12
  %521 = load %struct.tgl_message_media*, %struct.tgl_message_media** %520, align 8
  %522 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %521, i32 0, i32 7
  %523 = load i32, i32* %522, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %533

525:                                              ; preds = %512
  %526 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %527 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %528 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %527, i32 0, i32 12
  %529 = load %struct.tgl_message_media*, %struct.tgl_message_media** %528, align 8
  %530 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %529, i32 0, i32 7
  %531 = load i32, i32* %530, align 4
  %532 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %526, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i32 %531)
  br label %533

533:                                              ; preds = %525, %512
  %534 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %535 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %534, i32 0, i32 12
  %536 = load %struct.tgl_message_media*, %struct.tgl_message_media** %535, align 8
  %537 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %536, i32 0, i32 8
  %538 = load i32, i32* %537, align 8
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %548

540:                                              ; preds = %533
  %541 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %542 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %543 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %542, i32 0, i32 12
  %544 = load %struct.tgl_message_media*, %struct.tgl_message_media** %543, align 8
  %545 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %544, i32 0, i32 8
  %546 = load i32, i32* %545, align 8
  %547 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %541, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %546)
  br label %548

548:                                              ; preds = %540, %533
  %549 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %550 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %549, i32 0, i32 12
  %551 = load %struct.tgl_message_media*, %struct.tgl_message_media** %550, align 8
  %552 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %551, i32 0, i32 9
  %553 = load i32, i32* %552, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %563

555:                                              ; preds = %548
  %556 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %557 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %558 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %557, i32 0, i32 12
  %559 = load %struct.tgl_message_media*, %struct.tgl_message_media** %558, align 8
  %560 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %559, i32 0, i32 9
  %561 = load i32, i32* %560, align 4
  %562 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %556, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %561)
  br label %563

563:                                              ; preds = %555, %548
  %564 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %565 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %564, i32 0, i32 12
  %566 = load %struct.tgl_message_media*, %struct.tgl_message_media** %565, align 8
  %567 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %566, i32 0, i32 10
  %568 = load i32, i32* %567, align 8
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %578

570:                                              ; preds = %563
  %571 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %572 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %573 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %572, i32 0, i32 12
  %574 = load %struct.tgl_message_media*, %struct.tgl_message_media** %573, align 8
  %575 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %574, i32 0, i32 10
  %576 = load i32, i32* %575, align 8
  %577 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %571, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 %576)
  br label %578

578:                                              ; preds = %570, %563
  %579 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %580 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %579, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %655

581:                                              ; preds = %2
  %582 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %583 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %584 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %583, i32 0, i32 11
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %584, i32 0, i32 4
  %586 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %589 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %588, i32 0, i32 11
  %590 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %589, i32 0, i32 4
  %591 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 4
  %593 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %582, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i32 %587, i32 %592)
  %594 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %595 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %594, i32 0, i32 11
  %596 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %606

599:                                              ; preds = %581
  %600 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %601 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %602 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %601, i32 0, i32 11
  %603 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 4
  %605 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %600, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %604)
  br label %606

606:                                              ; preds = %599, %581
  %607 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %608 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %607, i32 0, i32 11
  %609 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %619

612:                                              ; preds = %606
  %613 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %614 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %615 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %614, i32 0, i32 11
  %616 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 4
  %618 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %613, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i32 %617)
  br label %619

619:                                              ; preds = %612, %606
  %620 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %621 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %620, i32 0, i32 11
  %622 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %621, i32 0, i32 2
  %623 = load i32, i32* %622, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %632

625:                                              ; preds = %619
  %626 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %627 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %628 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %627, i32 0, i32 11
  %629 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 4
  %631 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %626, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 %630)
  br label %632

632:                                              ; preds = %625, %619
  %633 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %634 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %633, i32 0, i32 11
  %635 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %634, i32 0, i32 3
  %636 = load i32, i32* %635, align 4
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %645

638:                                              ; preds = %632
  %639 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %640 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %641 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %640, i32 0, i32 11
  %642 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %641, i32 0, i32 3
  %643 = load i32, i32* %642, align 4
  %644 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %639, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i32 %643)
  br label %645

645:                                              ; preds = %638, %632
  %646 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %647 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %646, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %655

648:                                              ; preds = %2
  %649 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %650 = load %struct.tgl_message_media*, %struct.tgl_message_media** %4, align 8
  %651 = getelementptr inbounds %struct.tgl_message_media, %struct.tgl_message_media* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %649, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i32 %652)
  %654 = call i32 @assert(%struct.tgl_message_media* null)
  br label %655

655:                                              ; preds = %10, %57, %274, %474, %477, %488, %509, %645, %648, %578
  ret void
}

declare dso_local i32 @assert(%struct.tgl_message_media*) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, ...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
