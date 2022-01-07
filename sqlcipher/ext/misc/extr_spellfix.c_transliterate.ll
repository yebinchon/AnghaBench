; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_transliterate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_transliterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8, i8, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @transliterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @transliterate(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 4
  %16 = add nsw i32 %15, 1
  %17 = call i8* @sqlite3_malloc64(i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %172

21:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %165, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %166

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @utf8Read(i8* %26, i32 %27, i32* %8)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %36, 127
  br i1 %37, label %38, label %46

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 %40, i8* %45, align 1
  br label %165

46:                                               ; preds = %25
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.TYPE_3__* @spellfixFindTranslit(i32 %47, i32* %10)
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %13, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %154, %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %155

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %54, %55
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %12, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %138

66:                                               ; preds = %53
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i8, i8* %71, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 %72, i8* %77, align 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %137

85:                                               ; preds = %66
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 %91, i8* %96, align 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i8, i8* %101, align 2
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %136

104:                                              ; preds = %85
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i8, i8* %109, align 2
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  store i8 %110, i8* %115, align 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %104
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  %129 = load i8, i8* %128, align 1
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8 %129, i8* %134, align 1
  br label %135

135:                                              ; preds = %123, %104
  br label %136

136:                                              ; preds = %135, %85
  br label %137

137:                                              ; preds = %136, %66
  store i32 0, i32* %7, align 4
  br label %155

138:                                              ; preds = %53
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %153

150:                                              ; preds = %138
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %150, %147
  br label %154

154:                                              ; preds = %153
  br label %49

155:                                              ; preds = %137, %49
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i8*, i8** %6, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  store i8 63, i8* %163, align 1
  br label %164

164:                                              ; preds = %158, %155
  br label %165

165:                                              ; preds = %164, %38
  br label %22

166:                                              ; preds = %22
  %167 = load i8*, i8** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  store i8 0, i8* %170, align 1
  %171 = load i8*, i8** %6, align 8
  store i8* %171, i8** %3, align 8
  br label %172

172:                                              ; preds = %166, %20
  %173 = load i8*, i8** %3, align 8
  ret i8* %173
}

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @utf8Read(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @spellfixFindTranslit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
