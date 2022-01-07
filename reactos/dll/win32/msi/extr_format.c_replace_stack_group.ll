; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_replace_stack_group.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_replace_stack_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i64, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FORMAT_LITERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32*, i8**, i8**, i32*, i32*, i32*)* @replace_stack_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replace_stack_group(%struct.TYPE_10__* %0, i32* %1, i8** %2, i8** %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i8*, i8** @FALSE, align 8
  %21 = load i8**, i8*** %12, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @FALSE, align 8
  %23 = load i8**, i8*** %11, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call %struct.TYPE_9__* @stack_pop(i32* %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %18, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %19, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %34 = call i32 @msi_free(%struct.TYPE_9__* %33)
  br label %35

35:                                               ; preds = %61, %7
  %36 = load i32*, i32** %10, align 8
  %37 = call %struct.TYPE_9__* @stack_pop(i32* %36)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %18, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i8*, i8** @TRUE, align 8
  %52 = load i8**, i8*** %12, align 8
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %39
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** @TRUE, align 8
  %60 = load i8**, i8*** %11, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %63 = call i32 @msi_free(%struct.TYPE_9__* %62)
  br label %35

64:                                               ; preds = %35
  %65 = call %struct.TYPE_9__* @msi_alloc_zero(i32 32)
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %17, align 8
  %66 = load i32, i32* %19, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @FORMAT_LITERAL, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %96, label %80

80:                                               ; preds = %64
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i8**, i8*** %12, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89, %80
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %95 = call i32 @msi_free(%struct.TYPE_9__* %94)
  store i32* null, i32** %8, align 8
  br label %194

96:                                               ; preds = %89, %84, %64
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %99, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 123
  br i1 %108, label %109, label %132

109:                                              ; preds = %96
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %115, %118
  %120 = sub nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %112, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 125
  br i1 %125, label %126, label %132

126:                                              ; preds = %109
  %127 = load i8*, i8** @FALSE, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  br label %172

132:                                              ; preds = %109, %96
  %133 = load i8**, i8*** %11, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %159

136:                                              ; preds = %132
  %137 = load i8**, i8*** %12, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %159, label %140

140:                                              ; preds = %136
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %159, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 2
  store i32 %158, i32* %156, align 4
  br label %171

159:                                              ; preds = %145, %140, %136, %132
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i8*, i8** @TRUE, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  br label %168

168:                                              ; preds = %164, %159
  %169 = load i8*, i8** @TRUE, align 8
  %170 = load i8**, i8*** %12, align 8
  store i8* %169, i8** %170, align 8
  br label %171

171:                                              ; preds = %168, %150
  br label %172

172:                                              ; preds = %171, %126
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = call i32* @dup_formstr(%struct.TYPE_10__* %174, %struct.TYPE_9__* %175, i32* %176)
  store i32* %177, i32** %16, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %14, align 8
  store i32 %180, i32* %181, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %183 = call i32 @msi_free(%struct.TYPE_9__* %182)
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %173
  %189 = load i8*, i8** @FALSE, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %188, %173
  %193 = load i32*, i32** %16, align 8
  store i32* %193, i32** %8, align 8
  br label %194

194:                                              ; preds = %192, %93
  %195 = load i32*, i32** %8, align 8
  ret i32* %195
}

declare dso_local %struct.TYPE_9__* @stack_pop(i32*) #1

declare dso_local i32 @msi_free(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @msi_alloc_zero(i32) #1

declare dso_local i32* @dup_formstr(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
