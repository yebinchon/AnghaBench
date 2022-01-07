; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_vlc_smb2_open_share.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_vlc_smb2_open_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.access_sys* }
%struct.access_sys = type { i32, i32, i32, i32 }
%struct.smb2_url = type { i8*, i32, i32 }
%struct.TYPE_14__ = type { i8*, i8*, i8* }
%struct.smb2_stat_64 = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"IPC$\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Guest\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@smb2_generic_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"smb2_connect_share_async\00", align 1
@smb2_share_enum_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"smb2_stat_async\00", align 1
@SMB2_TYPE_FILE = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@smb2_open_cb = common dso_local global i32 0, align 4
@SMB2_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@smb2_opendir_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"smb2_stat_cb: file type not handled\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"smb2_open*_async\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.smb2_url*, %struct.TYPE_14__*)* @vlc_smb2_open_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_smb2_open_share(%struct.TYPE_15__* %0, %struct.smb2_url* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.smb2_url*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.access_sys*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.smb2_stat_64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.smb2_url* %1, %struct.smb2_url** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.access_sys*, %struct.access_sys** %18, align 8
  store %struct.access_sys* %19, %struct.access_sys** %8, align 8
  %20 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %21 = getelementptr inbounds %struct.smb2_url, %struct.smb2_url* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  br label %44

40:                                               ; preds = %3
  %41 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %42 = getelementptr inbounds %struct.smb2_url, %struct.smb2_url* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %39 ], [ %43, %40 ]
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %49

49:                                               ; preds = %48, %44
  %50 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %51 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @smb2_set_password(i32 %52, i8* %53)
  %55 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %56 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i8*, i8** %12, align 8
  br label %63

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %62 ]
  %65 = call i32 @smb2_set_domain(i32 %57, i8* %64)
  %66 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %67 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %70 = getelementptr inbounds %struct.smb2_url, %struct.smb2_url* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* @smb2_generic_cb, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = call i32 @smb2_connect_share_async(i32 %68, i32 %71, i8* %72, i8* %73, i32 %74, %struct.TYPE_15__* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %63
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_15__* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %173

83:                                               ; preds = %63
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = call i64 @vlc_smb2_mainloop(%struct.TYPE_15__* %84, i32 0)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %173

88:                                               ; preds = %83
  %89 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %90 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %95 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @smb2_share_enum_cb, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = call i32 @smb2_share_enum_async(i32 %96, i32 %97, %struct.TYPE_15__* %98)
  store i32 %99, i32* %15, align 4
  br label %161

100:                                              ; preds = %88
  %101 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %102 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %105 = getelementptr inbounds %struct.smb2_url, %struct.smb2_url* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @smb2_generic_cb, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = call i64 @smb2_stat_async(i32 %103, i32 %106, %struct.smb2_stat_64* %16, i32 %107, %struct.TYPE_15__* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = call i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_15__* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %114

114:                                              ; preds = %111, %100
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = call i64 @vlc_smb2_mainloop(%struct.TYPE_15__* %115, i32 0)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %173

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.smb2_stat_64, %struct.smb2_stat_64* %16, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SMB2_TYPE_FILE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.smb2_stat_64, %struct.smb2_stat_64* %16, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %128 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %130 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %133 = getelementptr inbounds %struct.smb2_url, %struct.smb2_url* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @O_RDONLY, align 4
  %136 = load i32, i32* @smb2_open_cb, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %138 = call i32 @smb2_open_async(i32 %131, i32 %134, i32 %135, i32 %136, %struct.TYPE_15__* %137)
  store i32 %138, i32* %15, align 4
  br label %160

139:                                              ; preds = %119
  %140 = getelementptr inbounds %struct.smb2_stat_64, %struct.smb2_stat_64* %16, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SMB2_TYPE_DIRECTORY, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %146 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %149 = getelementptr inbounds %struct.smb2_url, %struct.smb2_url* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @smb2_opendir_cb, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = call i32 @smb2_opendir_async(i32 %147, i32 %150, i32 %151, %struct.TYPE_15__* %152)
  store i32 %153, i32* %15, align 4
  br label %159

154:                                              ; preds = %139
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = call i32 @msg_Err(%struct.TYPE_15__* %155, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %157 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %158 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  br label %173

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159, %124
  br label %161

161:                                              ; preds = %160, %93
  %162 = load i32, i32* %15, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %166 = call i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_15__* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 1)
  br label %173

167:                                              ; preds = %161
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %169 = call i64 @vlc_smb2_mainloop(%struct.TYPE_15__* %168, i32 0)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %173

172:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  br label %176

173:                                              ; preds = %171, %164, %154, %118, %87, %79
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = call i32 @vlc_smb2_disconnect_share(%struct.TYPE_15__* %174)
  store i32 -1, i32* %4, align 4
  br label %176

176:                                              ; preds = %173, %172
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @smb2_set_password(i32, i8*) #1

declare dso_local i32 @smb2_set_domain(i32, i8*) #1

declare dso_local i32 @smb2_connect_share_async(i32, i32, i8*, i8*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i64 @vlc_smb2_mainloop(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @smb2_share_enum_async(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @smb2_stat_async(i32, i32, %struct.smb2_stat_64*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @smb2_open_async(i32, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @smb2_opendir_async(i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @vlc_smb2_disconnect_share(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
