; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_opus_header.c_opus_header_parse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_opus_header.c_opus_header_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8, i8, i16, i8, i8, i8, i8*, i32, i64 }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"OpusHead\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opus_header_parse(i8* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca [9 x i8], align 1
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 8
  store i8 0, i8* %18, align 1
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %228

22:                                               ; preds = %3
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %24 = call i32 @read_chars(%struct.TYPE_7__* %9, i8* %23, i32 8)
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %26 = call i64 @memcmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %228

29:                                               ; preds = %22
  %30 = call i32 @read_chars(%struct.TYPE_7__* %9, i8* %10, i32 1)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %228

33:                                               ; preds = %29
  %34 = load i8, i8* %10, align 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i8 %34, i8* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 8
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 240
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %228

44:                                               ; preds = %33
  %45 = call i32 @read_chars(%struct.TYPE_7__* %9, i8* %10, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %228

48:                                               ; preds = %44
  %49 = load i8, i8* %10, align 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i8 %49, i8* %51, align 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %228

58:                                               ; preds = %48
  %59 = call i32 @read_uint16(%struct.TYPE_7__* %9, i64* %11)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %228

62:                                               ; preds = %58
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 8
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 7
  %68 = call i32 @read_uint32(%struct.TYPE_7__* %9, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %228

71:                                               ; preds = %62
  %72 = call i32 @read_uint16(%struct.TYPE_7__* %9, i64* %11)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %228

75:                                               ; preds = %71
  %76 = load i64, i64* %11, align 8
  %77 = trunc i64 %76 to i16
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i16 %77, i16* %79, align 2
  %80 = call i32 @read_chars(%struct.TYPE_7__* %9, i8* %10, i32 1)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %228

83:                                               ; preds = %75
  %84 = load i8, i8* %10, align 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i8 %84, i8* %86, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i8, i8* %88, align 4
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %182

92:                                               ; preds = %83
  %93 = call i32 @read_chars(%struct.TYPE_7__* %9, i8* %10, i32 1)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %228

96:                                               ; preds = %92
  %97 = load i8, i8* %10, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %228

101:                                              ; preds = %96
  %102 = load i8, i8* %10, align 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  store i8 %102, i8* %104, align 1
  %105 = call i32 @read_chars(%struct.TYPE_7__* %9, i8* %10, i32 1)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %228

108:                                              ; preds = %101
  %109 = load i8, i8* %10, align 1
  %110 = zext i8 %109 to i32
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp sgt i32 %110, %114
  br i1 %115, label %125, label %116

116:                                              ; preds = %108
  %117 = load i8, i8* %10, align 1
  %118 = zext i8 %117 to i32
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = add nsw i32 %118, %122
  %124 = icmp sgt i32 %123, 255
  br i1 %124, label %125, label %126

125:                                              ; preds = %116, %108
  store i32 0, i32* %4, align 4
  br label %228

126:                                              ; preds = %116
  %127 = load i8, i8* %10, align 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 5
  store i8 %127, i8* %129, align 2
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %178, %126
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %181

137:                                              ; preds = %130
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 6
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = call i32 @read_chars(%struct.TYPE_7__* %9, i8* %143, i32 1)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %228

147:                                              ; preds = %137
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 6
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 4
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 5
  %162 = load i8, i8* %161, align 2
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %159, %163
  %165 = icmp sgt i32 %155, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %147
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 6
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp ne i32 %174, 255
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %228

177:                                              ; preds = %166, %147
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %130

181:                                              ; preds = %130
  br label %209

182:                                              ; preds = %83
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp sgt i32 %186, 2
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %228

189:                                              ; preds = %182
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 4
  store i8 1, i8* %191, align 1
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp sgt i32 %195, 1
  %197 = zext i1 %196 to i32
  %198 = trunc i32 %197 to i8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 5
  store i8 %198, i8* %200, align 2
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 6
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  store i8 0, i8* %204, align 1
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 6
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 1, i8* %208, align 1
  br label %209

209:                                              ; preds = %189, %181
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i8, i8* %211, align 8
  %213 = zext i8 %212 to i32
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %209
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i8, i8* %217, align 8
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %227

221:                                              ; preds = %215, %209
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  store i32 0, i32* %4, align 4
  br label %228

227:                                              ; preds = %221, %215
  store i32 1, i32* %4, align 4
  br label %228

228:                                              ; preds = %227, %226, %188, %176, %146, %125, %107, %100, %95, %82, %74, %70, %61, %57, %47, %43, %32, %28, %21
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @read_chars(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @read_uint16(%struct.TYPE_7__*, i64*) #1

declare dso_local i32 @read_uint32(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
