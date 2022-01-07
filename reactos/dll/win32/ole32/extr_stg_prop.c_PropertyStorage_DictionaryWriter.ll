; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stg_prop.c_PropertyStorage_DictionaryWriter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stg_prop.c_PropertyStorage_DictionaryWriter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.DictionaryClosure = type { i32, i8* }

@CP_UNICODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @PropertyStorage_DictionaryWriter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PropertyStorage_DictionaryWriter(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.DictionaryClosure*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.DictionaryClosure*
  store %struct.DictionaryClosure* %19, %struct.DictionaryClosure** %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @assert(i8* %22)
  %24 = ptrtoint i32* %11 to i32
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @PtrToUlong(i8* %25)
  %27 = call i32 @StorageUtl_WriteDWord(i32 %24, i32 0, i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = bitcast i32* %11 to i8*
  %32 = call i8* @IStream_Write(i32 %30, i8* %31, i32 4, i32* %12)
  %33 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %34 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %36 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @FAILED(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %190

41:                                               ; preds = %4
  %42 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %43 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CP_UNICODE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %142

53:                                               ; preds = %41
  store i32 0, i32* %14, align 4
  %54 = ptrtoint i32* %13 to i32
  %55 = load i8*, i8** %5, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = call i32 @lstrlenW(i32 %56)
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @StorageUtl_WriteDWord(i32 %54, i32 0, i32 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = bitcast i32* %13 to i8*
  %67 = call i8* @IStream_Write(i32 %65, i8* %66, i32 4, i32* %12)
  %68 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %69 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %71 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @FAILED(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %53
  br label %190

76:                                               ; preds = %53
  %77 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %78 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i8* @PropertStorage_WriteWStringToStream(i32 %85, i8* %86, i32 %87, i32* %12)
  %89 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %90 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %92 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @FAILED(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %76
  br label %190

97:                                               ; preds = %76
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %102 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = urem i64 %108, 4
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %97
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = bitcast i32* %14 to i8*
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = urem i64 %117, 4
  %119 = sub i64 4, %118
  %120 = trunc i64 %119 to i32
  %121 = call i8* @IStream_Write(i32 %114, i8* %115, i32 %120, i32* %12)
  %122 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %123 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %125 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @FAILED(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %111
  br label %190

130:                                              ; preds = %111
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = urem i64 %132, 4
  %134 = sub i64 4, %133
  %135 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %136 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  br label %141

141:                                              ; preds = %130, %97
  br label %189

142:                                              ; preds = %41
  %143 = ptrtoint i32* %15 to i32
  %144 = load i8*, i8** %5, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = call i32 @strlen(i32 %145)
  %147 = add nsw i32 %146, 1
  %148 = call i32 @StorageUtl_WriteDWord(i32 %143, i32 0, i32 %147)
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = bitcast i32* %15 to i8*
  %153 = call i8* @IStream_Write(i32 %151, i8* %152, i32 4, i32* %12)
  %154 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %155 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %157 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @FAILED(i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %142
  br label %190

162:                                              ; preds = %142
  %163 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %164 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = add i64 %166, 4
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = load i32, i32* %15, align 4
  %174 = call i8* @IStream_Write(i32 %171, i8* %172, i32 %173, i32* %12)
  %175 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %176 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %178 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @FAILED(i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %162
  br label %190

183:                                              ; preds = %162
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %186 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %183, %141
  br label %190

190:                                              ; preds = %189, %182, %161, %129, %96, %75, %40
  %191 = load %struct.DictionaryClosure*, %struct.DictionaryClosure** %10, align 8
  %192 = getelementptr inbounds %struct.DictionaryClosure, %struct.DictionaryClosure* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @SUCCEEDED(i8* %193)
  ret i32 %194
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @StorageUtl_WriteDWord(i32, i32, i32) #1

declare dso_local i32 @PtrToUlong(i8*) #1

declare dso_local i8* @IStream_Write(i32, i8*, i32, i32*) #1

declare dso_local i64 @FAILED(i8*) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i8* @PropertStorage_WriteWStringToStream(i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @SUCCEEDED(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
