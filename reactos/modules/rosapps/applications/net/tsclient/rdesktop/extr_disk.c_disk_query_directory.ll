; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_query_directory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_query_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.fileinfo* }
%struct.fileinfo = type { i8*, i32, i32* }
%struct.dirent = type { i8* }
%struct.stat = type { i32, i32, i32, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@STATUS_NO_MORE_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@errno = common dso_local global i32 0, align 4
@STATUS_NO_SUCH_FILE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"IRP Query Directory sub: 0x%x\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_query_directory(%struct.TYPE_4__* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.dirent*, align 8
  %20 = alloca %struct.stat, align 4
  %21 = alloca %struct.fileinfo*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.fileinfo*, %struct.fileinfo** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %29, i64 %30
  store %struct.fileinfo* %31, %struct.fileinfo** %21, align 8
  %32 = load %struct.fileinfo*, %struct.fileinfo** %21, align 8
  %33 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %18, align 8
  %35 = load %struct.fileinfo*, %struct.fileinfo** %21, align 8
  %36 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %15, align 8
  store i32 0, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %216 [
    i32 128, label %39
  ]

39:                                               ; preds = %5
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.fileinfo*, %struct.fileinfo** %21, align 8
  %47 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @strrchr(i8* %49, i8 signext 47)
  %51 = add nsw i32 1, %50
  %52 = load i32, i32* @PATH_MAX, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @strncpy(i32 %48, i32 %51, i32 %53)
  %55 = load i32*, i32** %18, align 8
  %56 = call i32 @rewinddir(i32* %55)
  br label %57

57:                                               ; preds = %45, %39
  %58 = load i32*, i32** %18, align 8
  %59 = call %struct.dirent* @readdir(i32* %58)
  store %struct.dirent* %59, %struct.dirent** %19, align 8
  br label %60

60:                                               ; preds = %74, %57
  %61 = load %struct.dirent*, %struct.dirent** %19, align 8
  %62 = icmp ne %struct.dirent* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.fileinfo*, %struct.fileinfo** %21, align 8
  %65 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dirent*, %struct.dirent** %19, align 8
  %68 = getelementptr inbounds %struct.dirent, %struct.dirent* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @fnmatch(i32 %66, i8* %69, i32 0)
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %63, %60
  %73 = phi i1 [ false, %60 ], [ %71, %63 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i32*, i32** %18, align 8
  %76 = call %struct.dirent* @readdir(i32* %75)
  store %struct.dirent* %76, %struct.dirent** %19, align 8
  br label %60

77:                                               ; preds = %72
  %78 = load %struct.dirent*, %struct.dirent** %19, align 8
  %79 = icmp eq %struct.dirent* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @STATUS_NO_MORE_FILES, align 4
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %222

82:                                               ; preds = %77
  %83 = load i8*, i8** %15, align 8
  %84 = load %struct.dirent*, %struct.dirent** %19, align 8
  %85 = getelementptr inbounds %struct.dirent, %struct.dirent* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %83, i8* %86)
  %88 = call i32 @stat(i8* %26, %struct.stat* %20)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load i32, i32* @errno, align 4
  switch i32 %91, label %94 [
    i32 129, label %92
    i32 130, label %92
    i32 131, label %92
  ]

92:                                               ; preds = %90, %90, %90
  %93 = call i32 @memset(%struct.stat* %20, i32 0, i32 20)
  br label %99

94:                                               ; preds = %90
  %95 = call i32 @perror(i8* %26)
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @out_uint8(i32 %96, i32 0)
  %98 = load i32, i32* @STATUS_NO_SUCH_FILE, align 4
  store i32 %98, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %222

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %82
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @S_ISDIR(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.dirent*, %struct.dirent** %19, align 8
  %111 = getelementptr inbounds %struct.dirent, %struct.dirent* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 46
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %117, %109
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %124, %121
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @S_IWUSR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %136 = load i32, i32* %12, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @out_uint8s(i32 %139, i32 8)
  %141 = call i32 @get_create_time(%struct.stat* %20)
  %142 = call i32 @seconds_since_1970_to_filetime(i32 %141, i32* %14, i32* %13)
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @out_uint32_le(i32 %143, i32 %144)
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @out_uint32_le(i32 %146, i32 %147)
  %149 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @seconds_since_1970_to_filetime(i32 %150, i32* %14, i32* %13)
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @out_uint32_le(i32 %152, i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @out_uint32_le(i32 %155, i32 %156)
  %158 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @seconds_since_1970_to_filetime(i32 %159, i32* %14, i32* %13)
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @out_uint32_le(i32 %161, i32 %162)
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @out_uint32_le(i32 %164, i32 %165)
  %167 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @seconds_since_1970_to_filetime(i32 %168, i32* %14, i32* %13)
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @out_uint32_le(i32 %170, i32 %171)
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @out_uint32_le(i32 %173, i32 %174)
  %176 = load i32, i32* %11, align 4
  %177 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @out_uint32_le(i32 %176, i32 %178)
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @out_uint32_le(i32 %180, i32 0)
  %182 = load i32, i32* %11, align 4
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @out_uint32_le(i32 %182, i32 %184)
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @out_uint32_le(i32 %186, i32 0)
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @out_uint32_le(i32 %188, i32 %189)
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.dirent*, %struct.dirent** %19, align 8
  %193 = getelementptr inbounds %struct.dirent, %struct.dirent* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @strlen(i8* %194)
  %196 = mul nsw i32 2, %195
  %197 = add nsw i32 %196, 2
  %198 = call i32 @out_uint8(i32 %191, i32 %197)
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @out_uint8s(i32 %199, i32 7)
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @out_uint8(i32 %201, i32 0)
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @out_uint8s(i32 %203, i32 24)
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.dirent*, %struct.dirent** %19, align 8
  %208 = getelementptr inbounds %struct.dirent, %struct.dirent* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.dirent*, %struct.dirent** %19, align 8
  %211 = getelementptr inbounds %struct.dirent, %struct.dirent* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = mul nsw i32 2, %213
  %215 = call i32 @rdp_out_unistr(%struct.TYPE_4__* %205, i32 %206, i8* %209, i32 %214)
  br label %220

216:                                              ; preds = %5
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @unimpl(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %219, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %222

220:                                              ; preds = %138
  %221 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %221, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %222

222:                                              ; preds = %220, %216, %94, %80
  %223 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i32, i32, i32) #2

declare dso_local i32 @strrchr(i8*, i8 signext) #2

declare dso_local i32 @rewinddir(i32*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @fnmatch(i32, i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @memset(%struct.stat*, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @out_uint8(i32, i32) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @out_uint8s(i32, i32) #2

declare dso_local i32 @seconds_since_1970_to_filetime(i32, i32*, i32*) #2

declare dso_local i32 @get_create_time(%struct.stat*) #2

declare dso_local i32 @out_uint32_le(i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @rdp_out_unistr(%struct.TYPE_4__*, i32, i8*, i32) #2

declare dso_local i32 @unimpl(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
