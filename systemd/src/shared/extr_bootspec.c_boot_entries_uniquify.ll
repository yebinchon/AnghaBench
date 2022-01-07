; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_boot_entries_uniquify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_boot_entries_uniquify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @boot_entries_uniquify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boot_entries_uniquify(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i1 [ true, %2 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @find_nonunique(%struct.TYPE_5__* %24, i64 %25, i32* %14)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %170

29:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %71, %29
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %14, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = call i32 @boot_entry_title(%struct.TYPE_5__* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %170

62:                                               ; preds = %46
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @free_and_replace(i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %62, %39, %34
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %30

74:                                               ; preds = %30
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @find_nonunique(%struct.TYPE_5__* %75, i64 %76, i32* %14)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %170

80:                                               ; preds = %74
  store i64 0, i64* %7, align 8
  br label %81

81:                                               ; preds = %122, %80
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %81
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds i32, i32* %14, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %85
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %90
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %99
  %101 = call i32 @boot_entry_title(%struct.TYPE_5__* %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %101, i64 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %170

113:                                              ; preds = %97
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @free_and_replace(i32 %118, i8* %119)
  br label %121

121:                                              ; preds = %113, %90, %85
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %7, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %7, align 8
  br label %81

125:                                              ; preds = %81
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @find_nonunique(%struct.TYPE_5__* %126, i64 %127, i32* %14)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %170

131:                                              ; preds = %125
  store i64 0, i64* %7, align 8
  br label %132

132:                                              ; preds = %166, %131
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %5, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %169

136:                                              ; preds = %132
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds i32, i32* %14, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %165

141:                                              ; preds = %136
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %143
  %145 = call i32 @boot_entry_title(%struct.TYPE_5__* %144)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %145, i64 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %141
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %170

157:                                              ; preds = %141
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 @free_and_replace(i32 %162, i8* %163)
  br label %165

165:                                              ; preds = %157, %136
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %7, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %7, align 8
  br label %132

169:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %170

170:                                              ; preds = %169, %154, %130, %110, %79, %59, %28
  %171 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @find_nonunique(%struct.TYPE_5__*, i64, i32*) #2

declare dso_local i32 @asprintf(i8**, i8*, i32, i64) #2

declare dso_local i32 @boot_entry_title(%struct.TYPE_5__*) #2

declare dso_local i32 @free_and_replace(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
