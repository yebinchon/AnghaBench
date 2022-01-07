; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_new_Assoc.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_new_Assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@HASH_COLLIDE_PRIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"trimmed %i to %i.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @new_Assoc(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %181

18:                                               ; preds = %3
  %19 = call %struct.TYPE_9__* @calloc(i32 1, i32 48)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %181

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i64 2, i64* %5, align 8
  br label %32

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = icmp ugt i64 %28, 15
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 15, i64* %5, align 8
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 1, %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ult i64 %41, 25
  br i1 %42, label %43, label %61

43:                                               ; preds = %32
  %44 = load i64, i64* %6, align 8
  %45 = icmp ule i64 %44, 6
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i64 5, i64* %6, align 8
  br label %60

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = urem i64 %49, 2
  %51 = sub i64 1, %50
  %52 = sub i64 %48, %51
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = urem i64 %53, 3
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = sub i64 %57, 2
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %56, %47
  br label %60

60:                                               ; preds = %59, %46
  br label %88

61:                                               ; preds = %32
  %62 = load i64, i64* %6, align 8
  %63 = icmp ugt i64 %62, 131071
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 131071, i64* %6, align 8
  br label %87

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @prime_upto_min9(i64 %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @HASH_COLLIDE_PRIME, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  %73 = sub i64 %72, 1
  %74 = call i64 @prime_upto_min9(i64 %73)
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %9, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %83)
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %79, %75
  br label %87

87:                                               ; preds = %86, %64
  br label %88

88:                                               ; preds = %87, %60
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = zext i32 %94 to i64
  %96 = mul i64 48, %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = mul i64 %96, %99
  %101 = trunc i64 %100 to i32
  %102 = call i8* @malloc(i32 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %12, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %105 = icmp ne %struct.TYPE_9__* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %88
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = call i32 @free(%struct.TYPE_9__* %107)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %181

109:                                              ; preds = %88
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = zext i32 %112 to i64
  %114 = mul i64 8, %113
  %115 = trunc i64 %114 to i32
  %116 = call i8* @malloc(i32 %115)
  %117 = bitcast i8* %116 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %117, %struct.TYPE_8__** %13, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %119 = icmp ne %struct.TYPE_8__* %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %109
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = call i32 @free(%struct.TYPE_9__* %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %124 = call i32 @free(%struct.TYPE_9__* %123)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %181

125:                                              ; preds = %109
  store i64 0, i64* %10, align 8
  br label %126

126:                                              ; preds = %163, %125
  %127 = load i64, i64* %10, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = zext i32 %130 to i64
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %133, label %166

133:                                              ; preds = %126
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %135
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %14, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = mul i64 %138, %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %142
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store %struct.TYPE_9__* %143, %struct.TYPE_9__** %145, align 8
  store i64 0, i64* %11, align 8
  br label %146

146:                                              ; preds = %159, %133
  %147 = load i64, i64* %11, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ult i64 %147, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %146
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i64, i64* %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 6
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %152
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %11, align 8
  br label %146

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %10, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %10, align 8
  br label %126

166:                                              ; preds = %126
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  store %struct.TYPE_8__* %167, %struct.TYPE_8__** %169, align 8
  %170 = call i32 (...) @unix_time()
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @id_copy(i32 %175, i32* %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %179 = call i32 @client_id_self_update(%struct.TYPE_9__* %178)
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %180, %struct.TYPE_9__** %4, align 8
  br label %181

181:                                              ; preds = %166, %120, %106, %22, %17
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %182
}

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i64 @prime_upto_min9(i64) #1

declare dso_local i32 @LOGGER_DEBUG(i8*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @unix_time(...) #1

declare dso_local i32 @id_copy(i32, i32*) #1

declare dso_local i32 @client_id_self_update(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
