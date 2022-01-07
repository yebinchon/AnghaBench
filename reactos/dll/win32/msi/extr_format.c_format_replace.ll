; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_format_replace.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_format_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*, i8*, i8*, i32, i32, i8*, i32)* @format_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @format_replace(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %21 = load i8*, i8** %14, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 1, i32* %19, align 4
  br label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %19, align 4
  br label %29

29:                                               ; preds = %27, %26
  br label %30

30:                                               ; preds = %29, %7
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %19, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %19, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %19, align 4
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp sle i32 %40, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @msi_free(i8* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i8* null, i8** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %179

51:                                               ; preds = %30
  %52 = load i32, i32* %19, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i8* @msi_alloc(i32 %55)
  store i8* %56, i8** %17, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %179

60:                                               ; preds = %51
  %61 = load i8*, i8** %17, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %17, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i8* %63, i8* %66, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %20, align 4
  %77 = load i8*, i8** %14, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %107

79:                                               ; preds = %60
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %17, align 8
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %20, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 0, i8* %87, align 1
  br label %106

88:                                               ; preds = %79
  %89 = load i8*, i8** %17, align 8
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8*, i8** %14, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 1
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memcpy(i8* %92, i8* %93, i32 %97)
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %20, align 4
  %102 = load i8*, i8** %17, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %88, %82
  br label %107

107:                                              ; preds = %106, %60
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %110, i64 %116
  store i8* %117, i8** %18, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = load i32, i32* %20, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8*, i8** %18, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = call i32 @lstrlenW(i8* %123)
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 1
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memcpy(i8* %121, i8* %122, i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @msi_free(i8* %132)
  %134 = load i8*, i8** %17, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sub nsw i32 %137, 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %107
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %146, %143, %107
  %152 = load i8*, i8** %14, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %179

155:                                              ; preds = %151
  %156 = call %struct.TYPE_6__* @msi_alloc_zero(i32 32)
  store %struct.TYPE_6__* %156, %struct.TYPE_6__** %16, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %158 = icmp ne %struct.TYPE_6__* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %179

160:                                              ; preds = %155
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 4
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %178, %struct.TYPE_6__** %8, align 8
  br label %179

179:                                              ; preds = %160, %159, %154, %59, %42
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  ret %struct.TYPE_6__* %180
}

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local %struct.TYPE_6__* @msi_alloc_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
