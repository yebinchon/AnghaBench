; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_file.c_FileOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_file.c_FileOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i32*, %struct.TYPE_8__*, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot open file %s (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"read error: %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ignoring directory\00", align 1
@Read = common dso_local global i32 0, align 4
@FileControl = common dso_local global i32 0, align 4
@FileSeek = common dso_local global i32* null, align 8
@POSIX_FADV_WILLNEED = common dso_local global i32 0, align 4
@POSIX_FADV_NOREUSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_NOCACHE = common dso_local global i32 0, align 4
@F_RDAHEAD = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileOpen(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  store i32 -1, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strcasecmp(i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strtol(i8* %21, i8** %6, i32 10)
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @vlc_dup(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %60

30:                                               ; preds = %18
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ugt i8* %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  %44 = call i8* @vlc_uri_decode_duplicate(i8* %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 46, i8* %49, align 1
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = load i32, i32* @O_NONBLOCK, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @vlc_openat(i32 %50, i8* %51, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %47, %41
  br label %59

59:                                               ; preds = %58, %35, %30
  br label %60

60:                                               ; preds = %59, %27
  br label %79

61:                                               ; preds = %1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %70, i32* %2, align 4
  br label %181

71:                                               ; preds = %61
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @O_RDONLY, align 4
  %76 = load i32, i32* @O_NONBLOCK, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @vlc_open(i8* %74, i32 %77)
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %71, %60
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  br label %96

92:                                               ; preds = %82
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i8* [ %91, %88 ], [ %95, %92 ]
  %98 = load i32, i32* @errno, align 4
  %99 = call i32 @vlc_strerror_c(i32 %98)
  %100 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_7__* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %99)
  %101 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %101, i32* %2, align 4
  br label %181

102:                                              ; preds = %79
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @fstat(i32 %103, %struct.stat* %9)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = load i32, i32* @errno, align 4
  %109 = call i32 @vlc_strerror_c(i32 %108)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_7__* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  br label %177

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @S_ISDIR(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = call i32 @msg_Dbg(%struct.TYPE_7__* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %177

121:                                              ; preds = %113
  %122 = load i32*, i32** %3, align 8
  %123 = call %struct.TYPE_8__* @vlc_obj_malloc(i32* %122, i32 8)
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %10, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %125 = icmp eq %struct.TYPE_8__* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %177

130:                                              ; preds = %121
  %131 = load i32, i32* @Read, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 6
  store i32* null, i32** %135, align 8
  %136 = load i32, i32* @FileControl, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %141, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @S_ISREG(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %130
  %150 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @S_ISBLK(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %149, %130
  %155 = load i32*, i32** @FileSeek, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  store i32* %155, i32** %157, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @POSIX_FADV_WILLNEED, align 4
  %162 = call i32 @posix_fadvise(i32 %160, i32 0, i32 4096, i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @POSIX_FADV_NOREUSE, align 4
  %165 = call i32 @posix_fadvise(i32 %163, i32 0, i32 0, i32 %164)
  br label %175

166:                                              ; preds = %149
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  store i32* null, i32** %168, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @strcasecmp(i32 %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %166, %154
  %176 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %176, i32* %2, align 4
  br label %181

177:                                              ; preds = %129, %118, %106
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @vlc_close(i32 %178)
  %180 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %177, %175, %96, %69
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @vlc_dup(i32) #1

declare dso_local i8* @vlc_uri_decode_duplicate(i8*) #1

declare dso_local i32 @vlc_openat(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.TYPE_8__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @posix_fadvise(i32, i32, i32, i32) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
