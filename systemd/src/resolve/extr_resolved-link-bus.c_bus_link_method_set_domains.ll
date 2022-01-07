; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link-bus.c_bus_link_method_set_domains.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link-bus.c_bus_link_method_set_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"(sb)\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid search domain %s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Root domain is not suitable as search domain\00", align 1
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"org.freedesktop.resolve1.set-domains\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@DNS_SEARCH_DOMAIN_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_link_method_set_domains(%struct.TYPE_21__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %8, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = call i32 @assert(%struct.TYPE_21__* %17)
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %20 = call i32 @assert(%struct.TYPE_21__* %19)
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @verify_unmanaged_link(%struct.TYPE_21__* %21, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %170

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = call i32 @sd_bus_message_enter_container(%struct.TYPE_21__* %29, i8 signext 97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %170

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %73, %35
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = call i32 @sd_bus_message_read(%struct.TYPE_21__* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, i32* %11)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %170

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %74

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @dns_name_is_valid(i8* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %170

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %58, i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  store i32 %61, i32* %4, align 4
  br label %170

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %10, align 8
  %67 = call i64 @dns_name_is_root(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %72 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %70, i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  br label %170

73:                                               ; preds = %65, %62
  br label %36

74:                                               ; preds = %46
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = call i32 @sd_bus_message_rewind(%struct.TYPE_21__* %75, i32 0)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %170

81:                                               ; preds = %74
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = load i32, i32* @CAP_NET_ADMIN, align 4
  %84 = load i32, i32* @UID_INVALID, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @bus_verify_polkit_async(%struct.TYPE_21__* %82, i32 %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 1, i32 %84, i32* %88, i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %170

95:                                               ; preds = %81
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 1, i32* %4, align 4
  br label %170

99:                                               ; preds = %95
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dns_search_domain_mark_all(i32 %102)
  br label %104

104:                                              ; preds = %141, %99
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = call i32 @sd_bus_message_read(%struct.TYPE_21__* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, i32* %14)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %164

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %145

114:                                              ; preds = %110
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @dns_search_domain_find(i32 %117, i8* %118, %struct.TYPE_22__** %12)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %164

123:                                              ; preds = %114
  %124 = load i32, i32* %9, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %128 = call i32 @dns_search_domain_move_back_and_unmark(%struct.TYPE_22__* %127)
  br label %141

129:                                              ; preds = %123
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = load i32, i32* @DNS_SEARCH_DOMAIN_LINK, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 @dns_search_domain_new(%struct.TYPE_20__* %132, %struct.TYPE_22__** %12, i32 %133, %struct.TYPE_21__* %134, i8* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %164

140:                                              ; preds = %129
  br label %141

141:                                              ; preds = %140, %126
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  br label %104

145:                                              ; preds = %113
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %147 = call i32 @sd_bus_message_exit_container(%struct.TYPE_21__* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %164

151:                                              ; preds = %145
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dns_search_domain_unlink_marked(i32 %154)
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %157 = call i32 @link_save_user(%struct.TYPE_21__* %156)
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = call i32 @manager_write_resolv_conf(%struct.TYPE_20__* %160)
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %163 = call i32 @sd_bus_reply_method_return(%struct.TYPE_21__* %162, i32* null)
  store i32 %163, i32* %4, align 4
  br label %170

164:                                              ; preds = %150, %139, %122, %109
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dns_search_domain_unlink_all(i32 %167)
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %164, %151, %98, %93, %79, %69, %57, %52, %41, %33, %26
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @assert(%struct.TYPE_21__*) #1

declare dso_local i32 @verify_unmanaged_link(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @sd_bus_message_enter_container(%struct.TYPE_21__*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_21__*, i8*, i8**, i32*) #1

declare dso_local i32 @dns_name_is_valid(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, ...) #1

declare dso_local i64 @dns_name_is_root(i8*) #1

declare dso_local i32 @sd_bus_message_rewind(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_21__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @dns_search_domain_mark_all(i32) #1

declare dso_local i32 @dns_search_domain_find(i32, i8*, %struct.TYPE_22__**) #1

declare dso_local i32 @dns_search_domain_move_back_and_unmark(%struct.TYPE_22__*) #1

declare dso_local i32 @dns_search_domain_new(%struct.TYPE_20__*, %struct.TYPE_22__**, i32, %struct.TYPE_21__*, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(%struct.TYPE_21__*) #1

declare dso_local i32 @dns_search_domain_unlink_marked(i32) #1

declare dso_local i32 @link_save_user(%struct.TYPE_21__*) #1

declare dso_local i32 @manager_write_resolv_conf(%struct.TYPE_20__*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @dns_search_domain_unlink_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
