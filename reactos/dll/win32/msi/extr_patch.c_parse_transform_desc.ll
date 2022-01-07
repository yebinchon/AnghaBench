; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_parse_transform_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_parse_transform_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform_desc = type { i64*, i64*, i64*, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.transform_desc* (i8*)* @parse_transform_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.transform_desc* @parse_transform_desc(i8* %0) #0 {
  %2 = alloca %struct.transform_desc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.transform_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  %9 = call %struct.transform_desc* @msi_alloc_zero(i32 40)
  store %struct.transform_desc* %9, %struct.transform_desc** %4, align 8
  %10 = icmp ne %struct.transform_desc* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.transform_desc* null, %struct.transform_desc** %2, align 8
  br label %236

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strchrW(i8* %13, i8 signext 125)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 123
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %12
  br label %233

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = add nsw i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i8* @msi_alloc(i32 %35)
  %37 = bitcast i8* %36 to i64*
  %38 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %39 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %38, i32 0, i32 4
  store i64* %37, i64** %39, align 8
  %40 = icmp ne i64* %37, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %23
  br label %233

42:                                               ; preds = %23
  %43 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %44 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %43, i32 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(i64* %45, i8* %46, i32 %50)
  %52 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %53 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %52, i32 0, i32 4
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 0, i64* %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i8* @strchrW(i8* %60, i8 signext 59)
  store i8* %61, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %42
  br label %233

64:                                               ; preds = %42
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 1
  %75 = trunc i64 %74 to i32
  %76 = call i8* @msi_alloc(i32 %75)
  %77 = bitcast i8* %76 to i64*
  %78 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %79 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %78, i32 0, i32 3
  store i64* %77, i64** %79, align 8
  %80 = icmp ne i64* %77, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %64
  br label %233

82:                                               ; preds = %64
  %83 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %84 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 1
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memcpy(i64* %85, i8* %86, i32 %90)
  %92 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %93 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 0, i64* %97, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %5, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i8* @strchrW(i8* %100, i8 signext 125)
  store i8* %101, i8** %6, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 123
  br i1 %105, label %109, label %106

106:                                              ; preds = %82
  %107 = load i8*, i8** %6, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106, %82
  br label %233

110:                                              ; preds = %106
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = add nsw i64 %115, 1
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 1
  %122 = trunc i64 %121 to i32
  %123 = call i8* @msi_alloc(i32 %122)
  %124 = bitcast i8* %123 to i64*
  %125 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %126 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %125, i32 0, i32 2
  store i64* %124, i64** %126, align 8
  %127 = icmp ne i64* %124, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %110
  br label %233

129:                                              ; preds = %110
  %130 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %131 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 1
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(i64* %132, i8* %133, i32 %137)
  %139 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %140 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 0, i64* %144, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  store i8* %146, i8** %5, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = call i8* @strchrW(i8* %147, i8 signext 59)
  store i8* %148, i8** %6, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %129
  br label %233

151:                                              ; preds = %129
  %152 = load i8*, i8** %6, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 1
  %162 = trunc i64 %161 to i32
  %163 = call i8* @msi_alloc(i32 %162)
  %164 = bitcast i8* %163 to i64*
  %165 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %166 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %165, i32 0, i32 1
  store i64* %164, i64** %166, align 8
  %167 = icmp ne i64* %164, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %151
  br label %233

169:                                              ; preds = %151
  %170 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %171 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = load i8*, i8** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 1
  %177 = trunc i64 %176 to i32
  %178 = call i32 @memcpy(i64* %172, i8* %173, i32 %177)
  %179 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %180 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %179, i32 0, i32 1
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64 0, i64* %184, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8* %186, i8** %5, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = call i8* @strchrW(i8* %187, i8 signext 125)
  store i8* %188, i8** %6, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 123
  br i1 %192, label %196, label %193

193:                                              ; preds = %169
  %194 = load i8*, i8** %6, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %193, %169
  br label %233

197:                                              ; preds = %193
  %198 = load i8*, i8** %6, align 8
  %199 = load i8*, i8** %5, align 8
  %200 = ptrtoint i8* %198 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  %203 = add nsw i64 %202, 1
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = mul i64 %207, 1
  %209 = trunc i64 %208 to i32
  %210 = call i8* @msi_alloc(i32 %209)
  %211 = bitcast i8* %210 to i64*
  %212 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %213 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %212, i32 0, i32 0
  store i64* %211, i64** %213, align 8
  %214 = icmp ne i64* %211, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %197
  br label %233

216:                                              ; preds = %197
  %217 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %218 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i8*, i8** %5, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 1
  %224 = trunc i64 %223 to i32
  %225 = call i32 @memcpy(i64* %219, i8* %220, i32 %224)
  %226 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %227 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  store i64 0, i64* %231, align 8
  %232 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  store %struct.transform_desc* %232, %struct.transform_desc** %2, align 8
  br label %236

233:                                              ; preds = %215, %196, %168, %150, %128, %109, %81, %63, %41, %22
  %234 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %235 = call i32 @free_transform_desc(%struct.transform_desc* %234)
  store %struct.transform_desc* null, %struct.transform_desc** %2, align 8
  br label %236

236:                                              ; preds = %233, %216, %11
  %237 = load %struct.transform_desc*, %struct.transform_desc** %2, align 8
  ret %struct.transform_desc* %237
}

declare dso_local %struct.transform_desc* @msi_alloc_zero(i32) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @free_transform_desc(%struct.transform_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
