; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_process_unique_cmd_columns.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_process_unique_cmd_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8**, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8**, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @process_unique_cmd_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_unique_cmd_columns(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i8** null, i8*** %3, align 8
  store i8** null, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %92, %1
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %95

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %88, %19
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %91

32:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %54, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %44, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %57

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %33

57:                                               ; preds = %52, %33
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %57
  %62 = load i8**, i8*** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 8, %65
  %67 = trunc i64 %66 to i32
  %68 = call i8** @realloc(i8** %62, i32 %67)
  store i8** %68, i8*** %4, align 8
  %69 = load i8**, i8*** %4, align 8
  %70 = icmp eq i8** %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %91

72:                                               ; preds = %61
  %73 = load i8**, i8*** %4, align 8
  store i8** %73, i8*** %3, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %80, i8** %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %72, %57
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %26

91:                                               ; preds = %71, %26
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %13

95:                                               ; preds = %13
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 4, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32* @safe_malloc(i32 %99)
  store i32* %100, i32** %5, align 8
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %178, %95
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %181

105:                                              ; preds = %101
  %106 = load i8**, i8*** %3, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %174, %105
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %177

122:                                              ; preds = %116
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  store %struct.TYPE_4__* %128, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %170, %122
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %173

135:                                              ; preds = %129
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load i8**, i8*** %3, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strcmp(i8* %142, i8* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %135
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = call i32 @MAX(i32 %155, i32 %163)
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %150, %135
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %129

173:                                              ; preds = %129
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %116

177:                                              ; preds = %116
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %101

181:                                              ; preds = %101
  %182 = load i8**, i8*** %3, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  store i8** %182, i8*** %184, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load i32*, i32** %5, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  store i32* %188, i32** %190, align 8
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
