; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_message_map_all_properties.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_message_map_all_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_properties_map = type { i32, i32 (i32, i8*, %struct.bus_properties_map*, i32*, i8*)*, i64 }

@SD_BUS_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"{sv}\00", align 1
@SD_BUS_TYPE_DICT_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@SD_BUS_TYPE_STRING = common dso_local global i32 0, align 4
@SD_BUS_TYPE_VARIANT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_message_map_all_properties(%struct.bus_properties_map* %0, %struct.bus_properties_map* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bus_properties_map*, align 8
  %8 = alloca %struct.bus_properties_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bus_properties_map*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.bus_properties_map* %0, %struct.bus_properties_map** %7, align 8
  store %struct.bus_properties_map* %1, %struct.bus_properties_map** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %19 = call i32 @assert(%struct.bus_properties_map* %18)
  %20 = load %struct.bus_properties_map*, %struct.bus_properties_map** %8, align 8
  %21 = call i32 @assert(%struct.bus_properties_map* %20)
  %22 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %23 = load i32, i32* @SD_BUS_TYPE_ARRAY, align 4
  %24 = call i32 @sd_bus_message_enter_container(%struct.bus_properties_map* %22, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %163

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %154, %29
  %31 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %32 = load i32, i32* @SD_BUS_TYPE_DICT_ENTRY, align 4
  %33 = call i32 @sd_bus_message_enter_container(%struct.bus_properties_map* %31, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %12, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %155

35:                                               ; preds = %30
  %36 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %37 = load i32, i32* @SD_BUS_TYPE_STRING, align 4
  %38 = call i32 @sd_bus_message_read_basic(%struct.bus_properties_map* %36, i32 %37, i8** %14)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %163

43:                                               ; preds = %35
  store i32 0, i32* %17, align 4
  store %struct.bus_properties_map* null, %struct.bus_properties_map** %13, align 8
  br label %44

44:                                               ; preds = %68, %43
  %45 = load %struct.bus_properties_map*, %struct.bus_properties_map** %8, align 8
  %46 = load i32, i32* %17, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bus_properties_map, %struct.bus_properties_map* %45, i64 %47
  %49 = getelementptr inbounds %struct.bus_properties_map, %struct.bus_properties_map* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %44
  %53 = load %struct.bus_properties_map*, %struct.bus_properties_map** %8, align 8
  %54 = load i32, i32* %17, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bus_properties_map, %struct.bus_properties_map* %53, i64 %55
  %57 = getelementptr inbounds %struct.bus_properties_map, %struct.bus_properties_map* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i64 @streq(i64 %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load %struct.bus_properties_map*, %struct.bus_properties_map** %8, align 8
  %64 = load i32, i32* %17, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bus_properties_map, %struct.bus_properties_map* %63, i64 %65
  store %struct.bus_properties_map* %66, %struct.bus_properties_map** %13, align 8
  br label %71

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %17, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %44

71:                                               ; preds = %62, %44
  %72 = load %struct.bus_properties_map*, %struct.bus_properties_map** %13, align 8
  %73 = icmp ne %struct.bus_properties_map* %72, null
  br i1 %73, label %74, label %139

74:                                               ; preds = %71
  %75 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %76 = call i32 @sd_bus_message_peek_type(%struct.bus_properties_map* %75, i32* null, i8** %15)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %163

81:                                               ; preds = %74
  %82 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %83 = load i32, i32* @SD_BUS_TYPE_VARIANT, align 4
  %84 = load i8*, i8** %15, align 8
  %85 = call i32 @sd_bus_message_enter_container(%struct.bus_properties_map* %82, i32 %83, i8* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %6, align 4
  br label %163

90:                                               ; preds = %81
  %91 = load i8*, i8** %11, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.bus_properties_map*, %struct.bus_properties_map** %13, align 8
  %94 = getelementptr inbounds %struct.bus_properties_map, %struct.bus_properties_map* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = bitcast i32* %97 to i8*
  store i8* %98, i8** %16, align 8
  %99 = load %struct.bus_properties_map*, %struct.bus_properties_map** %8, align 8
  %100 = load i32, i32* %17, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.bus_properties_map, %struct.bus_properties_map* %99, i64 %101
  %103 = getelementptr inbounds %struct.bus_properties_map, %struct.bus_properties_map* %102, i32 0, i32 1
  %104 = load i32 (i32, i8*, %struct.bus_properties_map*, i32*, i8*)*, i32 (i32, i8*, %struct.bus_properties_map*, i32*, i8*)** %103, align 8
  %105 = icmp ne i32 (i32, i8*, %struct.bus_properties_map*, i32*, i8*)* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %90
  %107 = load %struct.bus_properties_map*, %struct.bus_properties_map** %13, align 8
  %108 = getelementptr inbounds %struct.bus_properties_map, %struct.bus_properties_map* %107, i32 0, i32 1
  %109 = load i32 (i32, i8*, %struct.bus_properties_map*, i32*, i8*)*, i32 (i32, i8*, %struct.bus_properties_map*, i32*, i8*)** %108, align 8
  %110 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %111 = call i32 @sd_bus_message_get_bus(%struct.bus_properties_map* %110)
  %112 = load i8*, i8** %14, align 8
  %113 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i8*, i8** %16, align 8
  %116 = call i32 %109(i32 %111, i8* %112, %struct.bus_properties_map* %113, i32* %114, i8* %115)
  store i32 %116, i32* %12, align 4
  br label %126

117:                                              ; preds = %90
  %118 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %119 = call i32 @sd_bus_message_get_bus(%struct.bus_properties_map* %118)
  %120 = load i8*, i8** %14, align 8
  %121 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = call i32 @map_basic(i32 %119, i8* %120, %struct.bus_properties_map* %121, i32 %122, i32* %123, i8* %124)
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %117, %106
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %6, align 4
  br label %163

131:                                              ; preds = %126
  %132 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %133 = call i32 @sd_bus_message_exit_container(%struct.bus_properties_map* %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %6, align 4
  br label %163

138:                                              ; preds = %131
  br label %147

139:                                              ; preds = %71
  %140 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %141 = call i32 @sd_bus_message_skip(%struct.bus_properties_map* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %6, align 4
  br label %163

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %138
  %148 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %149 = call i32 @sd_bus_message_exit_container(%struct.bus_properties_map* %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %6, align 4
  br label %163

154:                                              ; preds = %147
  br label %30

155:                                              ; preds = %30
  %156 = load i32, i32* %12, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %6, align 4
  br label %163

160:                                              ; preds = %155
  %161 = load %struct.bus_properties_map*, %struct.bus_properties_map** %7, align 8
  %162 = call i32 @sd_bus_message_exit_container(%struct.bus_properties_map* %161)
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %160, %158, %152, %144, %136, %129, %88, %79, %41, %27
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @assert(%struct.bus_properties_map*) #1

declare dso_local i32 @sd_bus_message_enter_container(%struct.bus_properties_map*, i32, i8*) #1

declare dso_local i32 @sd_bus_message_read_basic(%struct.bus_properties_map*, i32, i8**) #1

declare dso_local i64 @streq(i64, i8*) #1

declare dso_local i32 @sd_bus_message_peek_type(%struct.bus_properties_map*, i32*, i8**) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.bus_properties_map*) #1

declare dso_local i32 @map_basic(i32, i8*, %struct.bus_properties_map*, i32, i32*, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(%struct.bus_properties_map*) #1

declare dso_local i32 @sd_bus_message_skip(%struct.bus_properties_map*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
