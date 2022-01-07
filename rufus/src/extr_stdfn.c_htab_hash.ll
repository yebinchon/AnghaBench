; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdfn.c_htab_hash.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdfn.c_htab_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [32 x i8] c"hash table is full (%d entries)\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"could not duplicate string for hash table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htab_hash(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %15, %2
  store i32 0, i32* %3, align 4
  br label %233

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %31, %24
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %11, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 6
  %35 = add nsw i32 %32, %34
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, 16
  %38 = add nsw i32 %35, %37
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  br label %25

41:                                               ; preds = %25
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = srem i32 %48, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %47
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %160

69:                                               ; preds = %58
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %69
  %81 = load i8*, i8** %4, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @safe_strcmp(i8* %81, i8* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %233

94:                                               ; preds = %80, %69
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 2
  %100 = srem i32 %95, %99
  %101 = add nsw i32 1, %100
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %149, %94
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %8, align 4
  br label %118

114:                                              ; preds = %102
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %106
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %159

123:                                              ; preds = %118
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %123
  %135 = load i8*, i8** %4, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @safe_strcmp(i8* %135, i8* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %3, align 4
  br label %233

148:                                              ; preds = %134, %123
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %102, label %159

159:                                              ; preds = %149, %122
  br label %160

160:                                              ; preds = %159, %58
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sge i32 %163, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %160
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %171)
  store i32 0, i32* %3, align 4
  br label %233

173:                                              ; preds = %160
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @safe_free(i8* %181)
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  store i32 %183, i32* %190, align 8
  %191 = load i8*, i8** %4, align 8
  %192 = call i64 @safe_strlen(i8* %191)
  %193 = add nsw i64 %192, 1
  %194 = call i64 @malloc(i64 %193)
  %195 = inttoptr i64 %194 to i8*
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i8* %195, i8** %202, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = icmp eq i8* %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %173
  %213 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %233

214:                                              ; preds = %173
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = load i8*, i8** %4, align 8
  %224 = load i8*, i8** %4, align 8
  %225 = call i64 @safe_strlen(i8* %224)
  %226 = add nsw i64 %225, 1
  %227 = call i32 @memcpy(i8* %222, i8* %223, i64 %226)
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %214, %212, %168, %146, %92, %23
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i64 @safe_strcmp(i8*, i8*) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32 @safe_free(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @safe_strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
