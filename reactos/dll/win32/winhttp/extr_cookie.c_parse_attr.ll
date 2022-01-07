; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_cookie.c_parse_attr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_cookie.c_parse_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr = type { i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr* (i8*, i32*)* @parse_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr* @parse_attr(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.attr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.attr*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  br label %11

19:                                               ; preds = %11
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %43, %19
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 32
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 61
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 59
  br label %41

41:                                               ; preds = %36, %31, %26, %21
  %42 = phi i1 [ false, %31 ], [ false, %26 ], [ false, %21 ], [ %40, %36 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %21

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store %struct.attr* null, %struct.attr** %3, align 8
  br label %214

56:                                               ; preds = %46
  %57 = call i8* @heap_alloc(i32 16)
  %58 = bitcast i8* %57 to %struct.attr*
  store %struct.attr* %58, %struct.attr** %8, align 8
  %59 = icmp ne %struct.attr* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store %struct.attr* null, %struct.attr** %3, align 8
  br label %214

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = call i8* @heap_alloc(i32 %66)
  %68 = bitcast i8* %67 to i64*
  %69 = load %struct.attr*, %struct.attr** %8, align 8
  %70 = getelementptr inbounds %struct.attr, %struct.attr* %69, i32 0, i32 1
  store i64* %68, i64** %70, align 8
  %71 = icmp ne i64* %68, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load %struct.attr*, %struct.attr** %8, align 8
  %74 = call i32 @heap_free(%struct.attr* %73)
  store %struct.attr* null, %struct.attr** %3, align 8
  br label %214

75:                                               ; preds = %61
  %76 = load %struct.attr*, %struct.attr** %8, align 8
  %77 = getelementptr inbounds %struct.attr, %struct.attr* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 1
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memcpy(i64* %78, i8* %79, i32 %83)
  %85 = load %struct.attr*, %struct.attr** %8, align 8
  %86 = getelementptr inbounds %struct.attr, %struct.attr* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 0, i64* %90, align 8
  %91 = load %struct.attr*, %struct.attr** %8, align 8
  %92 = getelementptr inbounds %struct.attr, %struct.attr* %91, i32 0, i32 0
  store i64* null, i64** %92, align 8
  %93 = load i8*, i8** %7, align 8
  store i8* %93, i8** %6, align 8
  br label %94

94:                                               ; preds = %99, %75
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  br label %94

102:                                              ; preds = %94
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %6, align 8
  %105 = load i8, i8* %103, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 61
  br i1 %107, label %108, label %188

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %114, %108
  %110 = load i8*, i8** %6, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 32
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %6, align 8
  br label %109

117:                                              ; preds = %109
  %118 = load i8*, i8** %6, align 8
  store i8* %118, i8** %7, align 8
  br label %119

119:                                              ; preds = %131, %117
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8*, i8** %7, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 59
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ false, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  br label %119

134:                                              ; preds = %129
  %135 = load i8*, i8** %7, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %155, %134
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i8*, i8** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 32
  br label %153

153:                                              ; preds = %144, %141
  %154 = phi i1 [ false, %141 ], [ %152, %144 ]
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %9, align 4
  br label %141

158:                                              ; preds = %153
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 1
  %163 = trunc i64 %162 to i32
  %164 = call i8* @heap_alloc(i32 %163)
  %165 = bitcast i8* %164 to i64*
  %166 = load %struct.attr*, %struct.attr** %8, align 8
  %167 = getelementptr inbounds %struct.attr, %struct.attr* %166, i32 0, i32 0
  store i64* %165, i64** %167, align 8
  %168 = icmp ne i64* %165, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %158
  %170 = load %struct.attr*, %struct.attr** %8, align 8
  %171 = call i32 @free_attr(%struct.attr* %170)
  store %struct.attr* null, %struct.attr** %3, align 8
  br label %214

172:                                              ; preds = %158
  %173 = load %struct.attr*, %struct.attr** %8, align 8
  %174 = getelementptr inbounds %struct.attr, %struct.attr* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 1
  %180 = trunc i64 %179 to i32
  %181 = call i32 @memcpy(i64* %175, i8* %176, i32 %180)
  %182 = load %struct.attr*, %struct.attr** %8, align 8
  %183 = getelementptr inbounds %struct.attr, %struct.attr* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %172, %102
  br label %189

189:                                              ; preds = %194, %188
  %190 = load i8*, i8** %7, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 32
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i8*, i8** %7, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %7, align 8
  br label %189

197:                                              ; preds = %189
  %198 = load i8*, i8** %7, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 59
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i8*, i8** %7, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %7, align 8
  br label %205

205:                                              ; preds = %202, %197
  %206 = load i8*, i8** %7, align 8
  %207 = load i8*, i8** %4, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  %212 = load i32*, i32** %5, align 8
  store i32 %211, i32* %212, align 4
  %213 = load %struct.attr*, %struct.attr** %8, align 8
  store %struct.attr* %213, %struct.attr** %3, align 8
  br label %214

214:                                              ; preds = %205, %169, %72, %60, %55
  %215 = load %struct.attr*, %struct.attr** %3, align 8
  ret %struct.attr* %215
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(%struct.attr*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @free_attr(%struct.attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
