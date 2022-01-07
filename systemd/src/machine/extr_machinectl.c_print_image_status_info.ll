; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_print_image_status_info.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_print_image_status_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i64, i64, i64, i64, i32, i32, i64, i64 }

@FORMAT_TIMESTAMP_RELATIVE_MAX = common dso_local global i32 0, align 4
@FORMAT_TIMESTAMP_MAX = common dso_local global i32 0, align 4
@FORMAT_BYTES_MAX = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\09    Type: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\09    Path: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"GetImageOSRelease\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\09      OS: \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\09      RO: %s%s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\09 Created: %s; %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\09 Created: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\09Modified: %s; %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"\09Modified: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\09   Usage: %s (exclusive: %s)\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\09   Usage: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\09   Limit: %s (exclusive: %s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\09   Limit: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*)* @print_image_status_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_image_status_info(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %14 = load i32, i32* @FORMAT_TIMESTAMP_RELATIVE_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load i32, i32* @FORMAT_TIMESTAMP_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %21 = load i32, i32* @FORMAT_BYTES_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @FORMAT_BYTES_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call i32 @assert(%struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 @assert(%struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fputs(i64 %38, i32 %39)
  %41 = call i32 @putchar(i8 signext 10)
  br label %42

42:                                               ; preds = %35, %2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @print_image_hostname(%struct.TYPE_10__* %63, i64 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 9
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @print_image_machine_id(%struct.TYPE_10__* %68, i64 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @print_image_machine_info(%struct.TYPE_10__* %73, i64 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 9
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @print_os_release(%struct.TYPE_10__* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %62
  %88 = call i8* (...) @ansi_highlight_red()
  br label %90

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i8* [ %88, %87 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %89 ]
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = call i8* (...) @ansi_normal()
  br label %105

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i8* [ %103, %102 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %104 ]
  %107 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %91, i8* %97, i8* %106)
  %108 = trunc i64 %15 to i32
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @format_timestamp_relative(i8* %17, i32 %108, i32 %111)
  store i8* %112, i8** %10, align 8
  %113 = trunc i64 %19 to i32
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @format_timestamp(i8* %20, i32 %113, i32 %116)
  store i8* %117, i8** %11, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %105
  %121 = load i8*, i8** %11, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i8*, i8** %11, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %124, i8* %125)
  br label %134

127:                                              ; preds = %120, %105
  %128 = load i8*, i8** %11, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %123
  %135 = trunc i64 %15 to i32
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @format_timestamp_relative(i8* %17, i32 %135, i32 %138)
  store i8* %139, i8** %10, align 8
  %140 = trunc i64 %19 to i32
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @format_timestamp(i8* %20, i32 %140, i32 %143)
  store i8* %144, i8** %11, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %134
  %148 = load i8*, i8** %11, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i8*, i8** %11, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %151, i8* %152)
  br label %161

154:                                              ; preds = %147, %134
  %155 = load i8*, i8** %11, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** %11, align 8
  %159 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %157, %154
  br label %161

161:                                              ; preds = %160, %150
  %162 = trunc i64 %22 to i32
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @format_bytes(i8* %23, i32 %162, i64 %165)
  store i8* %166, i8** %12, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %161
  %175 = trunc i64 %25 to i32
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = call i8* @format_bytes(i8* %26, i32 %175, i64 %178)
  br label %181

180:                                              ; preds = %161
  br label %181

181:                                              ; preds = %180, %174
  %182 = phi i8* [ %179, %174 ], [ null, %180 ]
  store i8* %182, i8** %13, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load i8*, i8** %13, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i8*, i8** %12, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %189, i8* %190)
  br label %199

192:                                              ; preds = %185, %181
  %193 = load i8*, i8** %12, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i8*, i8** %12, align 8
  %197 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %195, %192
  br label %199

199:                                              ; preds = %198, %188
  %200 = trunc i64 %22 to i32
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = call i8* @format_bytes(i8* %23, i32 %200, i64 %203)
  store i8* %204, i8** %12, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %207, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %199
  %213 = trunc i64 %25 to i32
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = call i8* @format_bytes(i8* %26, i32 %213, i64 %216)
  br label %219

218:                                              ; preds = %199
  br label %219

219:                                              ; preds = %218, %212
  %220 = phi i8* [ %217, %212 ], [ null, %218 ]
  store i8* %220, i8** %13, align 8
  %221 = load i8*, i8** %12, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %230

223:                                              ; preds = %219
  %224 = load i8*, i8** %13, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i8*, i8** %12, align 8
  %228 = load i8*, i8** %13, align 8
  %229 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %227, i8* %228)
  br label %237

230:                                              ; preds = %223, %219
  %231 = load i8*, i8** %12, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i8*, i8** %12, align 8
  %235 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %233, %230
  br label %237

237:                                              ; preds = %236, %226
  %238 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %238)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(%struct.TYPE_10__*) #2

declare dso_local i32 @fputs(i64, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @print_image_hostname(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @print_image_machine_id(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @print_image_machine_info(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @print_os_release(%struct.TYPE_10__*, i8*, i64, i8*) #2

declare dso_local i8* @ansi_highlight_red(...) #2

declare dso_local i8* @ansi_normal(...) #2

declare dso_local i8* @format_timestamp_relative(i8*, i32, i32) #2

declare dso_local i8* @format_timestamp(i8*, i32, i32) #2

declare dso_local i8* @format_bytes(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
