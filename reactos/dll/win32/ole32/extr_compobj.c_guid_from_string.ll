; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_guid_from_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_guid_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s -> %p\0A\00", align 1
@guid_conv_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*)* @guid_from_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guid_from_string(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 123
  br i1 %14, label %15, label %24

15:                                               ; preds = %9, %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = call i32 @memset(%struct.TYPE_5__* %16, i32 0, i32 4)
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %248

22:                                               ; preds = %15
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %248

24:                                               ; preds = %9
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @debugstr_w(i8* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.TYPE_5__* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %61, %24
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 9
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @is_valid_hex(i8 signext %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %248

44:                                               ; preds = %34
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 4
  %49 = load i32*, i32** @guid_conv_table, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %48, %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %31

64:                                               ; preds = %31
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 9
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 45
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %3, align 4
  br label %248

72:                                               ; preds = %64
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  store i32 10, i32* %6, align 4
  br label %75

75:                                               ; preds = %105, %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 14
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @is_valid_hex(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %3, align 4
  br label %248

88:                                               ; preds = %78
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 4
  %93 = load i32*, i32** @guid_conv_table, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i64
  %100 = getelementptr inbounds i32, i32* %93, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %92, %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %75

108:                                              ; preds = %75
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 14
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 45
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @FALSE, align 4
  store i32 %115, i32* %3, align 4
  br label %248

116:                                              ; preds = %108
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  store i32 0, i32* %118, align 8
  store i32 15, i32* %6, align 4
  br label %119

119:                                              ; preds = %149, %116
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 19
  br i1 %121, label %122, label %152

122:                                              ; preds = %119
  %123 = load i8*, i8** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = call i32 @is_valid_hex(i8 signext %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %3, align 4
  br label %248

132:                                              ; preds = %122
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = shl i32 %135, 4
  %137 = load i32*, i32** @guid_conv_table, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i64
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %136, %145
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %132
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %119

152:                                              ; preds = %119
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 19
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 45
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %3, align 4
  br label %248

160:                                              ; preds = %152
  store i32 20, i32* %6, align 4
  br label %161

161:                                              ; preds = %229, %160
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %162, 37
  br i1 %163, label %164, label %232

164:                                              ; preds = %161
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 24
  br i1 %166, label %167, label %180

167:                                              ; preds = %164
  %168 = load i8*, i8** %4, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 45
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %3, align 4
  br label %248

177:                                              ; preds = %167
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %177, %164
  %181 = load i8*, i8** %4, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = call i32 @is_valid_hex(i8 signext %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %180
  %189 = load i8*, i8** %4, align 8
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %189, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = call i32 @is_valid_hex(i8 signext %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %188, %180
  %198 = load i32, i32* @FALSE, align 4
  store i32 %198, i32* %3, align 4
  br label %248

199:                                              ; preds = %188
  %200 = load i32*, i32** @guid_conv_table, align 8
  %201 = load i8*, i8** %4, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i64
  %207 = getelementptr inbounds i32, i32* %200, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 4
  %210 = load i32*, i32** @guid_conv_table, align 8
  %211 = load i8*, i8** %4, align 8
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i64
  %218 = getelementptr inbounds i32, i32* %210, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %209, %219
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sub nsw i32 %224, 20
  %226 = sdiv i32 %225, 2
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  store i32 %220, i32* %228, align 4
  br label %229

229:                                              ; preds = %199
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 2
  store i32 %231, i32* %6, align 4
  br label %161

232:                                              ; preds = %161
  %233 = load i8*, i8** %4, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 37
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 125
  br i1 %237, label %238, label %246

238:                                              ; preds = %232
  %239 = load i8*, i8** %4, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 38
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = load i32, i32* @TRUE, align 4
  store i32 %245, i32* %3, align 4
  br label %248

246:                                              ; preds = %238, %232
  %247 = load i32, i32* @FALSE, align 4
  store i32 %247, i32* %3, align 4
  br label %248

248:                                              ; preds = %246, %244, %197, %175, %158, %130, %114, %86, %70, %42, %22, %20
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @is_valid_hex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
