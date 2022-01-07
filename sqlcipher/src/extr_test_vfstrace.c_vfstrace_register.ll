; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstrace_register.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstrace_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { i32 (i8*, i8*)*, i8*, %struct.TYPE_9__*, i8*, %struct.TYPE_9__* }

@SQLITE_NOTFOUND = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@vfstraceOpen = common dso_local global i32 0, align 4
@vfstraceDelete = common dso_local global i32 0, align 4
@vfstraceAccess = common dso_local global i32 0, align 4
@vfstraceFullPathname = common dso_local global i32 0, align 4
@vfstraceDlOpen = common dso_local global i64 0, align 8
@vfstraceDlError = common dso_local global i64 0, align 8
@vfstraceDlSym = common dso_local global i64 0, align 8
@vfstraceDlClose = common dso_local global i64 0, align 8
@vfstraceRandomness = common dso_local global i32 0, align 4
@vfstraceSleep = common dso_local global i32 0, align 4
@vfstraceCurrentTime = common dso_local global i32 0, align 4
@vfstraceGetLastError = common dso_local global i64 0, align 8
@vfstraceCurrentTimeInt64 = common dso_local global i64 0, align 8
@vfstraceSetSystemCall = common dso_local global i64 0, align 8
@vfstraceGetSystemCall = common dso_local global i64 0, align 8
@vfstraceNextSystemCall = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s.enabled_for(\22%s\22)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfstrace_register(i8* %0, i8* %1, i32 (i8*, i8*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.TYPE_9__* @sqlite3_vfs_find(i8* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %13, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @SQLITE_NOTFOUND, align 4
  store i32 %22, i32* %6, align 4
  br label %235

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 184, %27
  %29 = add i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call %struct.TYPE_9__* @sqlite3_malloc(i32 %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %12, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = icmp eq %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %36, i32* %6, align 4
  br label %235

37:                                               ; preds = %23
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @memset(%struct.TYPE_9__* %38, i32 0, i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 1
  %43 = bitcast %struct.TYPE_9__* %42 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %14, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 20
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 20
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 19
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 19
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 1
  %62 = bitcast %struct.TYPE_8__* %61 to i8*
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 1
  %67 = bitcast %struct.TYPE_8__* %66 to i8*
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @memcpy(i8* %67, i8* %68, i32 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 18
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %74, align 8
  %75 = load i32, i32* @vfstraceOpen, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 17
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @vfstraceDelete, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 16
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @vfstraceAccess, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 15
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @vfstraceFullPathname, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 14
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %37
  br label %94

92:                                               ; preds = %37
  %93 = load i64, i64* @vfstraceDlOpen, align 8
  br label %94

94:                                               ; preds = %92, %91
  %95 = phi i64 [ 0, %91 ], [ %93, %92 ]
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %105

103:                                              ; preds = %94
  %104 = load i64, i64* @vfstraceDlError, align 8
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i64 [ 0, %102 ], [ %104, %103 ]
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %116

114:                                              ; preds = %105
  %115 = load i64, i64* @vfstraceDlSym, align 8
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i64 [ 0, %113 ], [ %115, %114 ]
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %127

125:                                              ; preds = %116
  %126 = load i64, i64* @vfstraceDlClose, align 8
  br label %127

127:                                              ; preds = %125, %124
  %128 = phi i64 [ 0, %124 ], [ %126, %125 ]
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* @vfstraceRandomness, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 13
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @vfstraceSleep, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 12
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @vfstraceCurrentTime, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 11
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %127
  br label %147

145:                                              ; preds = %127
  %146 = load i64, i64* @vfstraceGetLastError, align 8
  br label %147

147:                                              ; preds = %145, %144
  %148 = phi i64 [ 0, %144 ], [ %146, %145 ]
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 6
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sge i32 %153, 2
  br i1 %154, label %155, label %206

155:                                              ; preds = %147
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %163

161:                                              ; preds = %155
  %162 = load i64, i64* @vfstraceCurrentTimeInt64, align 8
  br label %163

163:                                              ; preds = %161, %160
  %164 = phi i64 [ 0, %160 ], [ %162, %161 ]
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 7
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sge i32 %169, 3
  br i1 %170, label %171, label %205

171:                                              ; preds = %163
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 8
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %179

177:                                              ; preds = %171
  %178 = load i64, i64* @vfstraceSetSystemCall, align 8
  br label %179

179:                                              ; preds = %177, %176
  %180 = phi i64 [ 0, %176 ], [ %178, %177 ]
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 8
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 9
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %190

188:                                              ; preds = %179
  %189 = load i64, i64* @vfstraceGetSystemCall, align 8
  br label %190

190:                                              ; preds = %188, %187
  %191 = phi i64 [ 0, %187 ], [ %189, %188 ]
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 9
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 10
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  br label %201

199:                                              ; preds = %190
  %200 = load i64, i64* @vfstraceNextSystemCall, align 8
  br label %201

201:                                              ; preds = %199, %198
  %202 = phi i64 [ 0, %198 ], [ %200, %199 ]
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 10
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %201, %163
  br label %206

206:                                              ; preds = %205, %147
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 4
  store %struct.TYPE_9__* %207, %struct.TYPE_9__** %209, align 8
  %210 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i32 (i8*, i8*)* %210, i32 (i8*, i8*)** %212, align 8
  %213 = load i8*, i8** %10, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  store i8* %218, i8** %220, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  store %struct.TYPE_9__* %221, %struct.TYPE_9__** %223, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @vfstrace_printf(%struct.TYPE_8__* %224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %227, i8* %230)
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @sqlite3_vfs_register(%struct.TYPE_9__* %232, i32 %233)
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %206, %35, %21
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local %struct.TYPE_9__* @sqlite3_vfs_find(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_9__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vfstrace_printf(%struct.TYPE_8__*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_vfs_register(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
