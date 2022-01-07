; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_smart.c_IsHDD.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_smart.c_IsHDD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i64, i64 }

@DRIVE_FIXED = common dso_local global i64 0, align 8
@GB = common dso_local global i32 0, align 4
@str_score = common dso_local global %struct.TYPE_6__* null, align 8
@str_adjust = common dso_local global %struct.TYPE_6__* null, align 8
@vid_score = common dso_local global %struct.TYPE_6__* null, align 8
@vidpid_score = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"  Score: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsHDD(i32 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @GetDriveTypeFromIndex(i32 %15)
  %17 = load i64, i64* @DRIVE_FIXED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 3
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @GetDriveSize(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @GB, align 4
  %27 = mul nsw i32 512, %26
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 10
  store i32 %31, i32* %9, align 4
  br label %41

32:                                               ; preds = %22
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @GB, align 4
  %35 = mul nsw i32 8, %34
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, 10
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %123

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %119, %44
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str_score, align 8
  %50 = call i64 @ARRAYSIZE(%struct.TYPE_6__* %49)
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %122

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str_score, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strlen(i8* %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %122

63:                                               ; preds = %52
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str_score, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 35
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str_score, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = sext i32 %86 to i64
  %88 = sub i64 %82, %87
  %89 = call i64 @_strnicmp(i8* %76, i8* %81, i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %63
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sge i32 %99, 48
  br i1 %100, label %101, label %118

101:                                              ; preds = %94
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sle i32 %106, 57
  br i1 %107, label %108, label %118

108:                                              ; preds = %101, %91
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str_score, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %9, align 4
  br label %122

118:                                              ; preds = %101, %94, %63
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %10, align 8
  br label %47

122:                                              ; preds = %108, %62, %47
  br label %123

123:                                              ; preds = %122, %41
  %124 = load i8*, i8** %8, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %156

126:                                              ; preds = %123
  store i64 0, i64* %10, align 8
  br label %127

127:                                              ; preds = %152, %126
  %128 = load i64, i64* %10, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str_adjust, align 8
  %130 = call i64 @ARRAYSIZE(%struct.TYPE_6__* %129)
  %131 = icmp ult i64 %128, %130
  br i1 %131, label %132, label %155

132:                                              ; preds = %127
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str_adjust, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32* @strstr(i8* %133, i8* %138)
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %151

141:                                              ; preds = %132
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str_adjust, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %141, %132
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %10, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %10, align 8
  br label %127

155:                                              ; preds = %127
  br label %156

156:                                              ; preds = %155, %123
  store i64 0, i64* %10, align 8
  br label %157

157:                                              ; preds = %181, %156
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vid_score, align 8
  %160 = call i64 @ARRAYSIZE(%struct.TYPE_6__* %159)
  %161 = icmp ult i64 %158, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %157
  %163 = load i64, i64* %6, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vid_score, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %163, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %162
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vid_score, align 8
  %172 = load i64, i64* %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %9, align 4
  br label %184

180:                                              ; preds = %162
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %10, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %10, align 8
  br label %157

184:                                              ; preds = %170, %157
  store i64 0, i64* %10, align 8
  br label %185

185:                                              ; preds = %217, %184
  %186 = load i64, i64* %10, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vidpid_score, align 8
  %188 = call i64 @ARRAYSIZE(%struct.TYPE_6__* %187)
  %189 = icmp ult i64 %186, %188
  br i1 %189, label %190, label %220

190:                                              ; preds = %185
  %191 = load i64, i64* %6, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vidpid_score, align 8
  %193 = load i64, i64* %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %191, %196
  br i1 %197, label %198, label %216

198:                                              ; preds = %190
  %199 = load i64, i64* %7, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vidpid_score, align 8
  %201 = load i64, i64* %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %199, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %198
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vidpid_score, align 8
  %208 = load i64, i64* %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %9, align 4
  br label %220

216:                                              ; preds = %198, %190
  br label %217

217:                                              ; preds = %216
  %218 = load i64, i64* %10, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %10, align 8
  br label %185

220:                                              ; preds = %206, %185
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @duprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %9, align 4
  ret i32 %223
}

declare dso_local i64 @GetDriveTypeFromIndex(i32) #1

declare dso_local i32 @GetDriveSize(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_6__*) #1

declare dso_local i64 @_strnicmp(i8*, i8*, i64) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @duprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
