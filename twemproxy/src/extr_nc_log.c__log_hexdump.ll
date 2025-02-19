; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c__log_hexdump.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c__log_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logger = type { i64, i32 }

@logger = common dso_local global %struct.logger zeroinitializer, align 8
@LOG_MAX_LEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%08x  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"  |\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"|\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_log_hexdump(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, ...) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.logger*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store %struct.logger* @logger, %struct.logger** %11, align 8
  %25 = load i32, i32* @LOG_MAX_LEN, align 4
  %26 = mul nsw i32 8, %25
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = load %struct.logger*, %struct.logger** %11, align 8
  %31 = getelementptr inbounds %struct.logger, %struct.logger* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 1, i32* %20, align 4
  br label %226

35:                                               ; preds = %5
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %18, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %37 = load i32, i32* @LOG_MAX_LEN, align 4
  %38 = mul nsw i32 8, %37
  store i32 %38, i32* %17, align 4
  br label %39

39:                                               ; preds = %179, %35
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %193

49:                                               ; preds = %47
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %29, i64 %51
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %16, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %15, align 4
  %57 = call i64 (i8*, i32, i8*, ...) @nc_scnprintf(i8* %52, i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i8*, i8** %8, align 8
  store i8* %62, i8** %21, align 8
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %24, align 4
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %93, %49
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 16
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ false, %64 ], [ %69, %67 ]
  br i1 %71, label %72, label %100

72:                                               ; preds = %70
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %23, align 1
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 7
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  store i8* %78, i8** %22, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %29, i64 %80
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %16, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i8, i8* %23, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8*, i8** %22, align 8
  %88 = call i64 (i8*, i32, i8*, ...) @nc_scnprintf(i8* %81, i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %86, i8* %87)
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %72
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %64

100:                                              ; preds = %70
  br label %101

101:                                              ; preds = %121, %100
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 16
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %105, 7
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  store i8* %108, i8** %22, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %29, i64 %110
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %16, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i8*, i8** %22, align 8
  %116 = call i64 (i8*, i32, i8*, ...) @nc_scnprintf(i8* %111, i32 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %101

124:                                              ; preds = %101
  %125 = load i8*, i8** %21, align 8
  store i8* %125, i8** %8, align 8
  %126 = load i32, i32* %24, align 4
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %29, i64 %128
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %16, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i64 (i8*, i32, i8*, ...) @nc_scnprintf(i8* %129, i32 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %172, %124
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %14, align 4
  %143 = icmp slt i32 %142, 16
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i1 [ false, %138 ], [ %143, %141 ]
  br i1 %145, label %146, label %179

146:                                              ; preds = %144
  %147 = load i8*, i8** %8, align 8
  %148 = load i8, i8* %147, align 1
  %149 = call i64 @isprint(i8 signext %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i8*, i8** %8, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  br label %156

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155, %151
  %157 = phi i32 [ %154, %151 ], [ 46, %155 ]
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %23, align 1
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %29, i64 %160
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %16, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i8, i8* %23, align 1
  %166 = zext i8 %165 to i32
  %167 = call i64 (i8*, i32, i8*, ...) @nc_scnprintf(i8* %161, i32 %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %16, align 4
  br label %172

172:                                              ; preds = %156
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %138

179:                                              ; preds = %144
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %29, i64 %181
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %16, align 4
  %185 = sub nsw i32 %183, %184
  %186 = call i64 (i8*, i32, i8*, ...) @nc_scnprintf(i8* %182, i32 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 16
  store i32 %192, i32* %15, align 4
  br label %39

193:                                              ; preds = %47
  %194 = load %struct.logger*, %struct.logger** %11, align 8
  %195 = getelementptr inbounds %struct.logger, %struct.logger* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = call i64 @nc_write(i64 %196, i8* %29, i32 %197)
  store i64 %198, i64* %19, align 8
  %199 = load i64, i64* %19, align 8
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %193
  %202 = load %struct.logger*, %struct.logger** %11, align 8
  %203 = getelementptr inbounds %struct.logger, %struct.logger* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %201, %193
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %17, align 4
  %209 = sub nsw i32 %208, 1
  %210 = icmp sge i32 %207, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %206
  %212 = load %struct.logger*, %struct.logger** %11, align 8
  %213 = getelementptr inbounds %struct.logger, %struct.logger* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i64 @nc_write(i64 %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  store i64 %215, i64* %19, align 8
  %216 = load i64, i64* %19, align 8
  %217 = icmp slt i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load %struct.logger*, %struct.logger** %11, align 8
  %220 = getelementptr inbounds %struct.logger, %struct.logger* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %218, %211
  br label %224

224:                                              ; preds = %223, %206
  %225 = load i32, i32* %18, align 4
  store i32 %225, i32* @errno, align 4
  store i32 0, i32* %20, align 4
  br label %226

226:                                              ; preds = %224, %34
  %227 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %20, align 4
  switch i32 %228, label %230 [
    i32 0, label %229
    i32 1, label %229
  ]

229:                                              ; preds = %226, %226
  ret void

230:                                              ; preds = %226
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nc_scnprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @isprint(i8 signext) #2

declare dso_local i64 @nc_write(i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
